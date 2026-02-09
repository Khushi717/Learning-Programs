#include<bits/stdc++.h>
using namepsace std;
struct Queue{
    int data;
    int priority;
    Queue *next;
    Queue(int d,int p){
        data=d;
        priority=p;
        next=nullptr;
    }
};
Queue* head=nullptr;
Queue* newNode(int d,int p){
    return new Queue(int d,int p);
}
void enqueue(int data,int priority){
    Queue* temp=newNode(int data,int priority);
    if(head==nullptr || priority<head->priority){
        temp->next=head;
        head=temp;
        return;
    }
    Queue* headd=head;
    while(headd->next!=nullptr && head->next->priority<=priority){
        headd=heaqdd->next;
    }
    temp->next=head->next;
    head->next=temp;
}
void display(){
    if(head==nullptr){
        cout<<"Priority queue is empty.\n";
        return;
    }
    Queue* temp=head;
    cout<<"Elements in priority queue:\n";
    while(temp->data!=nullptr){
        cout<<temp->data<<" ";
        temp=temp->next;

    }
}
int main(){
    int op;
    while(1){
        cout<<"1.Enqueue 2.Display 3.Exit";
        cout<<"Enter your option : ";
        cin>>op;
        switch(op){
            case 1:
            cout<<"Enter element : ";
            cin>>x;
            cout<<"Enter priority : ";
            cin>>p;
            enqueue(x,p);
            break;
            case 2:
            display();
            break;
            case 3:
            exit(0);
        }
    }
}