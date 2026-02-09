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
    //max in array
    int maxi=INT_MIN;
    for(int i=0;i<n;i++){
        if(arr[i]>maxi){
            maxi=arr[i];
        }
    }
    //precalculation
            int m=maxi+1;
        // int hash[m]={0};
        unordered_map<int,int> mpp;
        for(int i=0;i<n;i++){
           mpp[arr[i]]++;
        }
    int q;
    cout<<"Enter the number of querries"<<endl;
    cin>>q;
    while(q--){
        int num;
        cin>>num;
        //fetch
        if(num>m){
            cout<<"0"<<endl;
        }
        else{
            cout<<mpp[num]<<endl;
        }
    }
    return 0;
}