#include<iostream>
#include<vector>
using namespace std;
int main(){
    int n;
    cin>>n;
    vector<int> nums(n);
    for(int i=0;i<nums.size();i++){
        cin>>nums[i];
    }
    int k;
    cin>>k;
    int size=getmax(nums)+4;
    vector<int> HashTable(size,0);
    int i=0;
    int j=0;
    while(j<n){
        HashTable[nums[j]]++;
        if(HashTable[nums[j]]>1){
            cout<<"True"<<endl;
            return 0;
        }
        if((j-i)==k){
            HashTable[i]-=1;
            i++;
        }
        j++;
    }
    return False;
}