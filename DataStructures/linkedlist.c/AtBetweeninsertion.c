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
int llinsertion(struct Node *pre,int d,int index){
    struct Node *ptr=(struct Node*)malloc(sizeof(struct Node));
    struct Node *p=pre;
    int i=0;
    while(i!=index-1){
        p=p->next;
        i++;
    }
    ptr->data=d;
    ptr->next=p->next;
    p->next=ptr;
    return pre;
}
// int llinsertion(struct Node *pre,int d){
//     //in a single line new node is made(new menory creation)+its pointer is made...
//     struct Node *newptr=(struct Node*)malloc(sizeof(struct Node));
//     newptr->next=pre;
//     newptr->data=d;
//     return newptr;
// }
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
pre=llinsertion(pre,2,2);
lltraversal(pre);

}
