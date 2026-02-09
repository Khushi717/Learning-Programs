#include<stdio.h>
#include<stdlib.h>


struct node{
    int data;
    struct node *next;
};
typedef struct node *NODE;

NODE createnode(){
    NODE temp=(NODE)malloc(sizeof(struct node));
    temp->next=NULL;
    return temp;
}
NODE addnodes(NODE first,int x){
    NODE temp=createnode();
    temp->next=NULL;
    temp->data=x;
    if(first==NULL){
        first=temp;
    }
    else{
        NODE last=first;
        while(last->next!=NULL){
            last=last->next;
        }
        last->next=first;
        first->next=NULL;
    }
    return first;
}
void traversenodes(NODE first){
    NODE last=first;
    while(last!= NULL ){
        printf("%d",last->data);
        last=last->next;
    }
    printf("NULL\n");
}