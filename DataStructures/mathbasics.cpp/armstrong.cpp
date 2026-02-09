#include <bits/stdc++.h>
using namespace std;
int main(){
    int n;
    cin>>n;
    int sum=0;
    int cpy=n;
    while(n>0){
        int rem=n%10;
        n=n/10;
        sum+=rem*rem*rem;
    }
    if(cpy==sum){
        cout<<"Armstrong number"<<endl;
    }
    else{
        cout<<"Not an Armstrong number"<<endl;
    }
    return 0;
}