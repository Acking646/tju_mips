#include "watchpoint.h"
#include "expr.h"
#include "reg.h"

#define NR_WP 32

static WP wp_pool[NR_WP];
static WP *head, *free_;

void init_wp_pool() {
	int i;
	for(i = 0; i < NR_WP; i ++) {
		wp_pool[i].NO = i;
		wp_pool[i].next = &wp_pool[i + 1];
		
		wp_pool[i].old_val=0;
		wp_pool[i].expr[0]='\0';
	}
	wp_pool[NR_WP - 1].next = NULL;

	head = NULL;
	free_ = wp_pool;
}

/* TODO: Implement the functionality of watchpoint */
//返回空闲监视点结构
WP* new_wp(){
	if(free_==NULL){
		printf("Error: No free watchpoints available!\n");
		assert(0);
	}
	WP *wp=free_;
	free_=free_->next;//从free列表中取出头结点 然后指向下一个
	wp->next = head;
	head=wp;
	return wp;
}
//将wp归还到free_链表中
void free_wp(WP *wp){
	if(wp==NULL||head==NULL) return;
	if(head==wp){
		//删去头结点
		head=head->next;
	}else{
		WP* temp=head;
		while(temp!=NULL&&temp->next!=wp){
			temp=temp->next;
		}
		if(temp==NULL){
			printf("Error: Watchpoint NOT found!\n");
		}
		//删除
		temp->next=wp->next;
	}
	wp->expr[0]='\0';
	wp->old_val=0;
	wp->next=free_;
	free_=wp;
}
void delete_wp(int num){
	WP* target;
	target=&wp_pool[num];
	free_wp(target);
}
void info_wp(){
	//查询所有watchpoint
	WP* temp;
	temp=head;
	if(temp==NULL){
		printf("No watchpoints\n");
	}
	while(temp!=NULL){
		printf("Watchpoint:%d  Expression:%s\n",temp->NO,temp->expr);
		temp=temp->next;
	}
}
bool check_wp(){
	bool check=false;
	bool success=false;
	WP* temp=head; //头结点遍历
	int result;
	while(temp!=NULL){
		result=expr(temp->expr,&success);
		if(result!=temp->old_val){
			printf("Hint watchpoint %d at address 0x%08x\n",temp->NO,cpu.pc);
			check=true;
			printf("Watchpoint %d: %s\n", temp->NO, temp->expr);
        	printf("Old value = 0x%08x\n", temp->old_val);
       	 	printf("New value = 0x%08x\n", result);
        	temp->old_val = result;
		}
		temp = temp->next;
	}
	return check;
}