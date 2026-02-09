#include<iostream>
using namespace std;
int main(){
    string input;
    getline(cin,input);
    stringstream ss(input);
    string token;
    vector<int> arr;
    while(getline(ss,token,',')){
        arr.push_back(stoi(token));
    }
    int sum=0;
    int total=(n*(n+1))/2;
    int n=arr.size();
    for(int i=0;i<n;i++){
        sum+=arr[i];
    }
}