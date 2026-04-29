#include<bits/stdc++.h>
using namespace std;
int main(){
    int t;
    cin>>t;
    while(t--){
        string s;
        int n;
        cin>>n;
        cin>>s;
        int move=0;
        for(int i=0;i<n;i++){
            if((s[i]=='a' && s[i+1]=='b') || (s[i]=='b' && s[i+1]=='a')){
                move++;
                i++;
            }
        }
        if(move%2==0){
           cout<<"Bob"<<endl; 
        }
        else{
            cout<<"Alice"<<endl;
        }
    }
    return 0;
}