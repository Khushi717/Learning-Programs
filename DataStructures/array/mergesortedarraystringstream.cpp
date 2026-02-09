#include<iostream>
#include<algorithm>
#include<sstream>
#include<vector>
using namespace std;
int main(){
    string input1;
    getline(cin,input1);
    stringstream ss(input1);
    string token;
    vector<int> arr;
    while(getline(ss,token,',')){
        arr.push_back(stoi(token));
    }
    int m;
    cin>>m;
    cin.ignore();
    string input2;
    getline(cin,input2);
    stringstream ss2(input2);
    string token2;
    vector<int> arr2;
    while(getline(ss2,token2.',')){
        arr2.push_back(stoi(token2));
    }
    int n;
    cin>>n;
    for(int i=0;i<n;i++){
        arr[m+i]=arr[i];
    }
    sort(arr.begin(),arr.end());
    for(int i=0;i<m+n;i++){
        cout<<arr[i];
    }
}