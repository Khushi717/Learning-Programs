#include<bits/stdc++.h>
using namespace std;
int main(){
    int t;
    cin>>t;
    while(t--){
    int n;
    int x;
    cin>>n>>x;
    vector<int> gasstation(n);
    for(int i=0;i<n;i++){
        cin>>gasstation[i];
    }
    int maxi=INT_MIN;
    for(int i=0;i<n-1;i++){
        int poachy=gasstation[i+1]-gasstation[i];
        maxi=max(maxi,poachy);
    }
    int ans=max(maxi,2*(x-gasstation[n-1]));
    int anss=max(ans,(gasstation[0]-0));
    cout<<anss<<endl;
}
    return 0;
}