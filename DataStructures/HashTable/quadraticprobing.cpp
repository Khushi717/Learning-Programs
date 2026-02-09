#include<iostream>
using namespace std;
#define SIZE 13
int HashTable[SIZE];
int hashFunction(int x){
    return x%SIZE;
}
void insertEle(int x){
    int i=1;
    int index=hashFunction(x);
    int startIndex=index;
    while(HashTable[index]!=-1){
        index=(startIndex+i*i)%SIZE;
        i++;
        if(index==startIndex){
            cout<<"HashTable is full";
            return;
        }
    }
    HashTable[index]=x;
    cout<<"Successfully inserted.\n";
}
void deleteEle(int x){
    int i=1;
    int index=hashFunction(x);
    int startIndex=index;
    while(HashTable[index]!=x){
        if(HashTable[index]==x){
            break;
        }
        index=(startIndex+i*i)%SIZE;
        i++;
        if(index==startIndex){
            cout<<"Element not found so cannot be deleted,"<<endl;
            return;
        }
    }
    HashTable[index]=-1;
    cout<<"Successfully deleted."<<endl;
}
void searchEle(int x){
    int i=1;
    int index=hashFunction(x);
    int startIndex=index;
    while(HashTable[index]!=x){
        if(HashTable[index]==x){
            break;
        }
        index=(startIndex+i*i)%SIZE;
        i++;
        if(index==startIndex){
            cout<<"element not searched.\n";
            return;
        }
    }
    cout<<"Element found.\n";
}
void print(){
    for(int i=0;i<SIZE;i++){
        cout<<"["<<i<<"]"<<"=>"<<HashTable[i]<<endl;
    }
}
int main(){
    int x,op;
    for(int i=0;i<SIZE;i++){
        HashTable[i]=-1;
    }
    while(1){
        cout<<"1.Insert 2.Delete 3. Search 4.Print 5. Exit\n";
        cout<<"Enter your option:";
        cin>>op;
        switch(op){
            case 1: cout<<"Enter an element to be inserted : ";
            cin>>x;
            insertEle(x);
            break;
            case 2: cout<<"Enter an element to be deleted : ";
            cin>>x;
            deleteEle(x);
            break;
            case 3:
            cout<<"Enter an element to be searched : ";
            cin>>x;
            searchEle(x);
            break;
            case 4:
            print();
            break;
            case 5:
            exit(0);

        }
    }
}