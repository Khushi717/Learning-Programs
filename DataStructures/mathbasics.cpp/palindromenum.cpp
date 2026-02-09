#include <bits/stdc++.h>
using namespace std;
int main(){
    int n;
    cin>>n;
    int ans=0;
    int cpy=n;
    while(n>0){
        int rem=n%10;
        ans=ans*10+rem;
        n=n/10;
    }
    if(n<0){
        cout<<"Not a Palindrome Number"<<endl;
    }
    if(cpy==ans){
        cout<<"Palindrome number"<<endl;
    }
    else{
        cout<<"Not a Palindrome Number"<<endl;
    }
    return 0;
}