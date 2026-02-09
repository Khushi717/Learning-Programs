#include <bits/stdc++.h>
using namespace std;
int main(){
    int n;
    cout<<"Enter array size : ";
    cin>>n;
    int arr[n];
    cout<<"Enter the array"<<endl;
    for(int i=0;i<n;i++){
        cin>>arr[i];
    }
    int num;
    cout<<"Enter the number to find: ";
    cin>>num;
    for(int i=0;i<n;i++){
        if(arr[i]==num){
            cout<<"number is "<<arr[i]<<" at index "<<i<<endl;
        }
    }
    return 0;
}