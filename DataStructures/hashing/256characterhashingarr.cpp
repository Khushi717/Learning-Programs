//for all characters
#include <bits/stdc++.h>
using namespace std;
int main(){
string s;
cout<<"Enter the string :"<<endl;
cin>>s;
int q;
cout<<"Enter the number of querries : "<<endl;
cin>>q;
//precomputation
int hash[256]={0};
for(int i=0;i<s.size();i++){
    hash[s[i]]+=1;
}
while(q--){
    for(int i=1;i<=q;i++){
        cout<<"Enter querry"<<i<<" : "<<endl;
    char str;
    cin>>str;
    //fetching 
    cout<<hash[str]<<endl;
    }
}
    return 0;
}