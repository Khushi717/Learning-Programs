#include <bits/stdc++.h>
using namespace std;
int main(){
int n;
cin>>n;
vector<int> arr;
for(int i=1;i<=sqrt(n);i++){
    if(n%i==0){
        arr.push_back(i);
    if((n/i)!=i){
        arr.push_back(n/i);
    }
}
}
sort(arr.begin(),arr.end());
for(auto it:arr){
    cout<<it<<" ";
}
    return 0;
}