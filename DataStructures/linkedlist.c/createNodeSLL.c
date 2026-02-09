#include<stdio.h>
#include<stdlib.h>
#include "anothfunc.c"
void main(){
NODE first=NULL;
int x;
printf("Enter the value of x unit -1 reaches :");
scanf("%d",&x);
while(x!=-1){
   first=addnodes(first,x); 
   scanf("%d",&x);
}
if(first==NULL){
    printf("Linked list is empty");
}
else{
    printf("The elements in the linked list are : ");
    traversenodes(first);  
}
}