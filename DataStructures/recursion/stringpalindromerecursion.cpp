#include <bits/stdc++.h>
using namespace std;
bool f(int i,string s,int n){
    if(i>=n/2){
        return true;
    }
    if(s[i]!=s[n-i-1])
    return false;
    return f(i+1,s,n);
}
int main(){
    cout<<"Enter the string:"<<endl;
    string s;
    cin>>s;
    int len=s.length();
   if  (f(0,s,len)){
    cout<<"String is a Palindrome";
   }
   else{
    cout<<"String is not a Palindrome";
   }
    return 0;
}