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

int llAfternodeinsertion(struct Node *pre,int d,struct Node *prevNode){
    struct Node *ptr=(struct Node*)malloc(sizeof(struct Node));
ptr->data=d;
ptr->next=prevNode->next;
prevNode->next=ptr;
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
pre=llAfternodeinsertion(pre,2,second);
lltraversal(pre);

}