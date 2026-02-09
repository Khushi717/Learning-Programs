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
    //optimal solution
    //sum
    // total=n*(n+1)/2;
    // int sum=0;
    // for(int i=0;i<n;i++){
    //     sum+=arr[i];
    // }
    // int ans=total-sum;
    // cout<<ans<<endl;
    //xor
    int xor1=0;
    for(int i=1;i<=n;i++){
        xor1=xor1^i;
    }
    int xor2=0;
    for(int i=0;i<n;i++){
        xor2=xor2^arr[i];
    }
    int missing=xor1^xor2;
    cout<<missing<<endl;



    //brute force
    // for(int i=1;i<=n;i++){
    //     bool found=false;
    //     for(int j=0;j<n;j++){
    //         if(arr[j]==i){
    //             found=true;
    //             break;
    //         }
    //     }
    //     if(!found){
    //         cout<<i<<endl;
    //     }
    // }
    //--------------OR-------------------
    //better
    // int maxi=INT_MIN;
    // for(int i=0;i<n;i++){
    //     if(arr[i]>maxi){
    //         maxi=arr[i];
    //     }
    // }
    // int hash[maxi+1]={0};
    // for(int i=0;i<n;i++){
    //     hash[arr[i]]=1;
    // }
    // for(int i=0;i<maxi+1;i++){
    //     if(hash[i]==0){
    //         cout<<i<<endl;
    //     }
    // }
    return 0;
}