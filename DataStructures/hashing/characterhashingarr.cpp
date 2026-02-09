//for lowercase alphabets
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
int hash[25]={0};
for(int i=0;i<s.size();i++){
    hash[s[i]-'a']+=1;
}
while(q--){
    for(int i=1;i<=q;i++){
        cout<<"Enter querry"<<i<<" : "<<endl;
    char str;
    cin>>str;
    //fetching 
    cout<<hash[str-'a']<<endl;
    }
}
    return 0;
}