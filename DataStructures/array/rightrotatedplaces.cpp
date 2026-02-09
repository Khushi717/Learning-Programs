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
    int d;
    cout<<"Enter the number of places to rotate";
    cin>>d;
    d=d%n;
     vector<int> temp;
       for(int i=n-d;i<n;i++){
        temp.push_back(arr[i]);
       }
       for(int i=0;i<n-d;i++){
        temp.push_back(arr[i]);
       } 
       for(int i=0;i<n;i++){
        cout<<temp[i]<<" ";
       }
    return 0;
}