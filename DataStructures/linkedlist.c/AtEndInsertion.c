#include<stdio.h>
#include<stdlib.h>
struct Node{
    int data;
    struct Node *next;
};
void lltraversal(struct Node *pre){
while(pre !=NULL){
    printf("Element : %d\n",pre->data);
    pre=pre->next;
}
}

int llEndinsertion(struct Node *pre,int d){
    struct Node *ptr=(struct Node*)malloc(sizeof(struct Node));
 struct Node *p=pre;
 while(p->next!=NULL){
    p=p->next;
 }
 p->next=ptr;
 ptr->next=NULL;
 ptr->data=d;
 return pre;
}
int main(){

struct Node *pre=(struct Node*)malloc(sizeof(struct Node));
struct Node *head=(struct Node*)malloc(sizeof(struct Node));
struct Node *second=(struct Node*)malloc(sizeof(struct Node));
struct Node *third=(struct Node*)malloc(sizeof(struct Node));
pre->data=1;
pre->next=head;

head->data=10;
head->next=second;

second->data=20;
second->next=third;

third->data=30;
third->next=NULL;
pre=llEndinsertion(pre,2);
lltraversal(pre);

}