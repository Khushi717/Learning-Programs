#include<bits/stdc++.h>
using namespace std;
int main(){
    int t;
    cin>>t;
    while(t--){
        int n;
        cin>>n;
        string s;
        cin>>s;
        bool consecutive= false;
        int dot=0;
        for(int i=0;i<s.length();i++){
            if(((s[i]=='.'&& i<n) && (s[i+1]=='.' && i+1<n)) && (s[i+2]=='.' && i+2<n)){
                consecutive=true;
                cout<<2<<endl;
                break;
            }
            if(s[i]=='.'){
                dot++;
            }
        }
        if(consecutive==false){
            cout<<dot<<endl;
        }
    }
}