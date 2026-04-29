#include<bits/stdc++.h>
using namespace std;
int main(){
    int t;
    cin>>t;
    while(t--){
        string s;
        cin>>s;
        int cnt=0;
        for(int i=0;i<s.length();i++){
            if((s[i]=='a' && s[i+1]=='a' && i<s.length() && i+1<s.length())||(s[i]=='b' && s[i+1]=='b' && i<s.length() && i+1<s.length())){
                if(cnt==3){
                    break;
                }
                cnt++;
            }
        }
        if(cnt==3){
            cout<<"NO"<<endl;
        }
        else{
            cout<<"YES"<<endl;
        }
    }
}