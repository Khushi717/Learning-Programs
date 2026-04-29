#include<bits/stdc++.h>
using namespace std;
int main(){
    int t;
    cin>>t;
    while(t--){
    long long n;
    cin>>n;
    int final=0;
    final=1+(n-1)%9;
    if(final==0){
        cout<<"No"<<endl;
    }
    else{
        cout<<"Yes"<<endl;
    }
    }
    return 0;
}