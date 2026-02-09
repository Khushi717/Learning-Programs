#include <bits/stdc++.h>
using namespace std;
int main(){
    int n;
    cout<<"Enter array size : ";
    cin>>n;
    int arr[n];
    cout<<"Enter the array"<<endl;
    for(int i=0;i<n;i++){
        cin>>arr[i];
    }
    int j=0;
    for(int i=0;i<n;i++){
        if(arr[i]!=0){
            arr[j]=arr[i];
            j++;
        }
    }
    while(j<arr.size()){
        arr[j]=0;
        j++;
    }
    return 0;
}

// ----------------OR------------------
// class Solution {
// public:
//     void moveZeroes(vector<int>& arr) {
//         vector<int> temp;
//         for(int i=0;i<arr.size();i++){
//             if(arr[i]!=0){
//                 temp.push_back(arr[i]);
//             }
//         }
//             for(int i=0;i<arr.size();i++){
//                 if(arr[i]==0){
//                     temp.push_back(arr[i]);
//                 }
//             }
//             for(int i=0;i<temp.size();i++){
//                 arr[i]=temp[i];
//             }
//     }
// };