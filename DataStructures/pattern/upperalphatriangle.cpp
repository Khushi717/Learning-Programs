#include<iostream>
using namespace std;
int main(){
int n;
cin>>n;
char a='A';
for(int i=1;i<=n;i++){
    int bp=(2*i-1)/2+1;
    for(int j=1;j<=n-i;j++){
        cout<<" ";
    }
    for(int j=1;j<=2*i-1;j++){
        if(j<bp){
            cout<<a;
            a++;
        }
        else{
        cout<<a;
        a--;
        }
    }
a='A';
    cout<<"\n";
}
}