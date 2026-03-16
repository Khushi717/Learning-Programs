#include<bits/stdc++.h>
using namespace std;
int main(){
    int n;
    cin>>n;
    vector<float> nums(n);
    for(int i=0;i<n;i++){
        cin>>nums[i];
    }
    vector<vector<float>> B(n+1);
    for(int i=0;i<n;i++){
        int k=n*nums[i];
        B[k].push_back(nums[i]);
    }
    for(int i=0;i<n;i++){
        sort(B[i].begin(),B[i].end());
    }
    int idx=0;
    for(int i=0;i<=n;i++){
        for(int j=0;j<B[i].size();j++){
            nums[idx++]=B[i][j];
        }
    }
    cout<<fixed<<setprecision(2);
    for(int i=0;i<n;i++){
        cout<<nums[i];
        if(i<n-1){
            cout<<" ";
        }
    }
    cout<<"\n";
    return 0;
}