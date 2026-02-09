#include <bits/stdc++.h>
using namespace std;
int main(){
    int n;
    cin>>n;
    int ans=0;
    while(n>0){
        int rem=n%10;
        ans=ans*10+rem;
        n=n/10;
    }
    cout<<"Reversed number"<<ans<<endl;
    return 0;
}