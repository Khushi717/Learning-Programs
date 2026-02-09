#include <bits/stdc++.h>
using namespace std;
int main(){
int n;
cin>>n;
vector<int> arr;
int cnt=0;
for(int i=1;i<=sqrt(n);i++){
    if(n%i==0){
        //arr.push_back(i);
        cnt++;
    if((n/i)!=i){
       // arr.push_back(n/i);
        cnt++;
    }
}
}
if(cnt==2){
    cout<<"It is a prime number"<<endl;
}
else{
    cout<<"It is not a prime number"<<endl;
}
    return 0;
}


bool isPrime(int x) {
    if (x < 2) return false;
    for (int i = 2; i * i <= x; i++) {
        if (x % i == 0) return false;
    }
    return true;
}