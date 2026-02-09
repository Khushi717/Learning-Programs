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
    for(int i=0;i<d;i++){
        temp.push_back(arr[i]);
    }
    //forward shifting
    for(int i=d;i<n;i++){
        arr[i-d]=arr[i];
    }
     int j=0;
    for(int i=n-d;i<n;i++){
        arr[i]=temp[j];
        j++;
    }

    for(int i=0;i<n;i++){
        cout<<arr[i]<<" ";
    }
    return 0;
}