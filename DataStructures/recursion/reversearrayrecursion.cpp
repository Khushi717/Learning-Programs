#include <bits/stdc++.h>
using namespace std;
void f(int i,int arr[],int n){
    if(i>=n/2){
        return;
    }
    swap(arr[i],arr[n-i-1]);
    f(i+1,arr,n);
}
int main(){
    cout<<"Enter the array size:"<<endl;
    int n;
    cin>>n;
    int arr[n];
    cout<<"Enter the array:"<<endl;
    for(int i=0;i<n;i++){
        cin>>arr[i];
    }
    f(0,arr,n);
    for(int i=0;i<n;i++){
        cout<<arr[i]<<" ";
    }
    return 0;
}