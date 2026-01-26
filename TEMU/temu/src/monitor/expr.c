#include "temu.h"

/* We use the POSIX regex functions to process regular expressions.
 * Type 'man regex' for more information about POSIX regex functions.
 */
#include <sys/types.h>
#include <regex.h>

uint32_t get_reg_val(const char *s, bool *success);

enum {
    NOTYPE = 256, EQ, NEQ, AND, OR,
    NUM, HEX, REG,  // 数字, 16进制, 寄存器
    DEREF           // 指针解引用 (预留)
};

static struct rule {
    char *regex;
    int token_type;
} rules[] = {

    /* TODO: Add more rules.
     * Pay attention to the precedence level of different rules.
     */

    {" +",  NOTYPE},                // spaces
    {"\\+", '+'},                   // plus
    {"-", '-'},                     // minus
    {"\\*", '*'},                   // multiply
    {"/", '/'},                     // divide
    {"\\(", '('},                   // left parenthesis
    {"\\)", ')'},                   // right parenthesis
    {"0x[0-9a-fA-F]+", HEX},        // hex number (必须放在十进制之前匹配)
    {"[0-9]+", NUM},                // decimal number
    {"\\$[a-zA-Z0-9]+", REG},       // register (e.g. $t0, $pc)
    {"==", EQ},                     // equal
    {"!=", NEQ},                    // not equal
    {"&&", AND},                    // logical and
    {"\\|\\|", OR},                 // logical or
};

#define NR_REGEX (sizeof(rules) / sizeof(rules[0]) )

static regex_t re[NR_REGEX];

/* Rules are used for many times.
 * Therefore we compile them only once before any usage.
 */
void init_regex() {
    int i;
    char error_msg[128];
    int ret;

    for(i = 0; i < NR_REGEX; i ++) {
        ret = regcomp(&re[i], rules[i].regex, REG_EXTENDED);
        if(ret != 0) {
            regerror(ret, &re[i], error_msg, 128);
            Assert(ret == 0, "regex compilation failed: %s\n%s", error_msg, rules[i].regex);
        }
    }
}

typedef struct token {
    int type;
    char str[32]; // 用于存储数字或变量名的字符串
} Token;

Token tokens[32];
int nr_token;

static bool make_token(char *e) {
    int position = 0;
    int i;
    regmatch_t pmatch;
    
    nr_token = 0;

    while(e[position] != '\0') {
        /* Try all rules one by one. */
        for(i = 0; i < NR_REGEX; i ++) {
            if(regexec(&re[i], e + position, 1, &pmatch, 0) == 0 && pmatch.rm_so == 0) {
                char *substr_start = e + position;
                int substr_len = pmatch.rm_eo;

                Log("match rules[%d] = \"%s\" at position %d with len %d: %.*s", i, rules[i].regex, position, substr_len, substr_len, substr_start);
                position += substr_len;

                /* TODO: Now a new token is recognized with rules[i]. Add codes
                 * to record the token in the array `tokens'. For certain types
                 * of tokens, some extra actions should be performed.
                 */

                switch(rules[i].token_type) {
                    case NOTYPE: break; // 空格直接忽略

                    case NUM:
                    case HEX:
                    case REG:
                        tokens[nr_token].type = rules[i].token_type;
                        // 防止缓冲区溢出
                        if (substr_len >= 32) {
                            printf("Error: Token too long\n");
                            return false;
                        }
                        strncpy(tokens[nr_token].str, substr_start, substr_len);
                        tokens[nr_token].str[substr_len] = '\0'; // 确保字符串结束
                        nr_token++;
                        break;

                    default: // 各种运算符
                        tokens[nr_token].type = rules[i].token_type;
                        nr_token++;
                        break;
                }

                break;
            }
        }

        if(i == NR_REGEX) {
            printf("no match at position %d\n%s\n%*.s^\n", position, e, position, "");
            return false;
        }
    }

    return true; 
}

// 检查表达式是否被一对匹配的括号包围
static bool check_parentheses(int p, int q) {
    if (tokens[p].type != '(' || tokens[q].type != ')') {
        return false;
    }
    
    int balance = 0;
    // 扫描 p 到 q-1 (去掉最右边的括号)
    // 如果中途 balance 回到 0，说明最外层的括号不是匹配的一对
    // 例如: (1+2)*(3+4) -> 左边是(, 右边是), 但它们不匹配
    for (int i = p; i < q; i++) {
        if (tokens[i].type == '(') balance++;
        else if (tokens[i].type == ')') balance--;
        
        if (balance == 0) return false; // 在遇到最后一个右括号前闭合了，说明不是包裹整个表达式
    }
    
    return true;
}

// 获取运算符优先级的辅助函数
static int get_precedence(int type) {
    switch (type) {
        case OR: return 1;
        case AND: return 2;
        case EQ: case NEQ: return 3;
        case '+': case '-': return 4;
        case '*': case '/': return 5;
        default: return 99;
    }
}

// 核心递归求值函数
uint32_t eval(int p, int q) {
    if (p > q) {
        Assert(0, "Bad expression");
        return 0;
    }
    else if (p == q) {
        // 单个 Token 的情况
        uint32_t num = 0;
        if (tokens[p].type == NUM) {
            sscanf(tokens[p].str, "%d", &num);
        } else if (tokens[p].type == HEX) {
            sscanf(tokens[p].str, "%x", &num);
        } else if (tokens[p].type == REG) {
            bool success;
            // tokens[p].str 里存的是 "$t0", 正好传给 helper 函数
            num = get_reg_val(tokens[p].str, &success);
            
            if (!success) {
                // 如果找不到寄存器，报错并停止
                printf("Error: Unknown register %s\n", tokens[p].str);
                Assert(0, "Register lookup failed");
            }
        }
        return num;
    }
    else if (check_parentheses(p, q) == true) {
        return eval(p + 1, q - 1);
    }
    else {
        int op = -1; // 主运算符的位置
        int op_precedence = 99; // 当前主运算符优先级（越高越优先，初始化为很大）
        int balance = 0; // 括号层级

        // 寻找主运算符: 优先级最低，最靠右，且不在括号内
        for (int i = p; i <= q; i++) {
            if (tokens[i].type == '(') {
                balance++;
                continue;
            }
            if (tokens[i].type == ')') {
                balance--;
                continue;
            }
            
            if (balance == 0) {
                int type = tokens[i].type;
                if (type == NUM || type == HEX || type == REG) continue; // 跳过非运算符
                
                int curr_precedence = get_precedence(type);
                // <= 保证找到最靠右的（同级运算符从左到右结合）
                if (curr_precedence <= op_precedence) {
                    op_precedence = curr_precedence;
                    op = i;
                }
            }
        }
        
        if (op == -1) {
            Assert(0, "Cannot find dominant operator");
        }

        uint32_t val1 = eval(p, op - 1);
        uint32_t val2 = eval(op + 1, q);

        switch (tokens[op].type) {
            case '+': return val1 + val2;
            case '-': return val1 - val2;
            case '*': return val1 * val2;
            case '/': return val1 / val2; // 暂不处理除0异常
            case EQ:  return val1 == val2;
            case NEQ: return val1 != val2;
            case AND: return val1 && val2;
            case OR:  return val1 || val2;
            default: Assert(0, "Unknown operator type");
        }
    }
    return 0;
}

uint32_t expr(char *e, bool *success) {
    if(!make_token(e)) {
        *success = false;
        return 0;
    }

    *success = true;
    return eval(0, nr_token - 1);
}