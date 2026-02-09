#include <bits/stdc++.h>
using namespace std;
int main(){
    int n;
    cout<<"Enter the size of array:"<<endl;
    cin>>n;
    int nums[n];
    cout<<"Enter the Array elements : "<<endl;
    for(int i=0;i<n;i++){
        cin>>nums[i];
    }
        unordered_map<int,int> mpp;
        for(int i=0;i<n;i++){
            mpp[nums[i]]+=1;
        }
        int max=INT_MIN;
        int ele=-1;
        for(auto it : mpp){
            if(it.second>max){
                max=it.second;//freq (value)
                ele=it.first;//element (key)
            }
        }
        cout<<max<<endl;
    return 0;
}