#include<bits/stdc++.h>
using namespace std;
int main(){
    int t;
    cin>>t;
    while(t--){
        int n;
        cin>>n;
        int k;
        cin>>k;
        vector<int> nums(n);
        for(int i=0;i<n;i++){
            cin>>nums[i];
        }
        vector<int> temp=nums;
        bool flag=false;
        sort(temp.begin(),temp.end());
        for(int i=0;i<n;i++){
            if(temp[i]!=nums[i]){
                flag=true;
                break;
            }
        }
        if(n==1){
            cout<<"Yes\n";
        }
        else if(flag==false){
            cout<<"Yes\n";
        }
        else if(k==1 || k==0){
            cout<<"No\n";
        }
        else{
            cout<<"Yes\n";
        }
    }
    return 0;
}