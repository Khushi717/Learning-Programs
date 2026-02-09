#include <bits/stdc++.h>
using namespace std;
int main(){
    int n;
    cout<<"Enter array1 size : ";
    cin>>n;
    vector<int> nums1(n);
    cout<<"Enter the array1"<<endl;
    for(int i=0;i<n;i++){
        cin>>nums1[i];
    }
    int m;
    cout<<"Enter array2 size : ";
    cin>>m;
    vector<int> nums2(m);
    cout<<"Enter the array2"<<endl;
    for(int i=0;i<m;i++){
        cin>>nums2[i];
    }
    set<int> st;
    for(int i=0;i<nums1.size();i++){
        st.insert(nums1[i]);
    }
    for(int j=0;j<nums2.size();j++){
        st.insert(nums2[j]);
    }
    nums1.clear();
    for(auto it: st){
        nums1.push_back(it);
    }
    cout<<"Union:"<<endl;
    for(int i=0;i<nums1.size();i++){
        cout<<nums1[i]<<" ";
    }

    //-------------------OR-----------------
     //taken unique ele from nums2 wrt nums1
    //     for(int i=0;i<nums2.size();i++){
    //         bool found=false;
    //         for(int j=0;j<nums1.size();j++){
    //             if(nums1[j]==nums2[i]){
    //                 found=true;
    //                 break;
    //             }
    //         }
    //         if(!found){
    //             nums1.push_back(nums2[i]);
    //         }
    //     }
    //     vector<int> result;
    //     for(int i=0;i<nums1.size();i++){
    //         bool flag=false;
    //         for(int j=0;j<result.size();j++){
    //             if(nums1[i]==result[j]){
    //                 flag=true;
    //                 break;
    //             }
    //         }
    //         if(!flag){
    //             result.push_back(nums1[i]);
    //         }
    //     }
    //    sort(result.begin(),result.end());
    //    return result;
    return 0;
}