#include<iostream>
using namespace std;
#define SIZE 13
#define PRIME 7
int HashTable[SIZE];
int hashFunction1(int x){
    return x%SIZE;
}
int hashFunction2(int x){
    return PRIME-(x%PRIME);
}
void insertEle(int x){
    int index=hashFunction1(x);
    int startIndex=index;
    int index2=hashFunction2(x);
    int i=1;
    while(HashTable[index]!=-1){
        if(HashTable[index]==x){
            cout<<HashTable[index]<<" already exista in the hash table. "<<endl;
            return ;
        }
        index=(startindex+i*index2)%SIZE;
        i++;
        if(start==startindex){
            cout<<"Hash table is full."<<endl;
            return;
        }
    }
    HashTable[index]=x;
    cout<<"Successfully inserted. "<<endl;
}
deleteEle(int x){
    int index=hashFunction1(x);
    int index2=hashFunction2(x);
    int startindex=index;
    int i=1;
    while(HashTable[index]!=x){
        if(HashTable[index]==x){
            cout<<"Element found \n";
            break;
        }
        index=(startIndex+i*index2)%SIZE;
        i++;
        if(index==startIndex){
            cout<<"Ele not found"<<endl;
            return;
        }
    }
    HashTable[index]=-1;
    cout<<"Successfully deleted"<<endl;
}
searchEle(int x){
    int index=hashFunction(x);
    int index2=hashFunction2(x);
    int i=1;
    int startIndex=index;
    while(HashTable[index]!=x){
        if(HashTable[index]==x){
            break;
        }
        index=(startIndex+i*index2)%SIZE;
        i++;
        if(index==startIndex){
            cout<<"Element not found.\n";
            return ;
        }
    }
    cout<<"Element found."<<endl;
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