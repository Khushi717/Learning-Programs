#include <bits/stdc++.h>
using namespace std;


void second_largest(int arr[],int n){
int largest=arr[0];
int secondlargest=INT_MIN;
for(int i=0;i<n;i++){
    if(arr[i]>largest){
        secondlargest=largest;
        largest=arr[i];
    }
    else if(arr[i]<largest && arr[i]>secondlargest){
        secondlargest=arr[i];
    }
}
cout<<"second largest : "<<secondlargest<<endl;
}


void second_smallest(int arr[],int n){
    int smallest=arr[0];
    int secondsmallest=INT_MAX;
    for(int i=0;i<n;i++){
        if(arr[i]<smallest){
            secondsmallest=smallest;
            smallest=arr[i];
        }
        else if(arr[i]>smallest && arr[i]<secondsmallest){
            secondsmallest=arr[i];
        }
    }
    cout<<"second smallest : "<<secondsmallest<<endl;
}


int main(){
int n;
cout<<"Enter array size : ";
cin>>n;
int arr[n];
cout<<"Enter the array : ";
for(int i=0;i<n;i++){
    cin>>arr[i];
}
int a;
cout<<"Type 1 for slargest and 2 for ssmallest:"<<endl;
cin>>a;
switch(a){
    case 1:
    second_largest(arr,n);
    break;
    case 2:
    second_smallest(arr,n);
    break;
    default:
    cout<<"invalid choice"<<endl;
}
    return 0;
}