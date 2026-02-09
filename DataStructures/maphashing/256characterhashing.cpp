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
unordered_map<char,int> mpp;
for(int i=0;i<s.size();i++){
    mpp[s[i]]++;
}
while(q--){
        cout<<"Enter querry : "<<endl;
    char str;
    cin>>str;
    //fetching 
    cout<<mpp[str]<<endl;
    }
    return 0;
}