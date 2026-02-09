#include <bits/stdc++.h>
using namespace std;
int main(){
    int n;
    cout<<"Enter array size : ";
    cin>>n;
    vector<int> arr(n);
    cout<<"Enter the array"<<endl;
    for(int i=0;i<n;i++){
        cin>>arr[i];
    }
    vector<int> neg;
    vector<int> pos;
    for(int i=0;i<arr.size();i++){
        if(arr[i]>0){
            pos.push_back(arr[i]);
        }
        else if(arr[i]<0){
            neg.push_back(arr[i]);
        }
    }
    if(neg.size()==pos.size()){
         for(int i=0;i<pos.size();i++){
        arr[i*2]=pos[i];
        arr[i*2+1]=neg[i];
    }
    }
    else if(neg.size()<pos.size()){
         for(int i=0;i<neg.size();i++){
        arr[i*2]=pos[i];
        arr[i*2+1]=neg[i];
    }
    int idx=neg.size()*2;
    for(int i=neg.size();i<pos.size();i++){
        arr[idx]=pos[i];
        idx++;
    }
    }
    else if(neg.size()>pos.size()){
         for(int i=0;i<pos.size();i++){
        arr[i*2]=pos[i];
        arr[i*2+1]=neg[i];
    }
    int idx=pos.size()*2;
    for(int i=pos.size();i<neg.size();i++){
        arr[idx]=neg[i];
        idx++;
    }
    }
    cout << "Rearranged array:" << endl;
    for (int i = 0; i < n; i++) {
        cout << arr[i] << " ";
    }
    cout << endl;
    return 0;

}