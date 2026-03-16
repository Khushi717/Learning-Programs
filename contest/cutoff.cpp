#include <bits/stdc++.h>
using namespace std;

int main(){
    int n,c;
    map<int,int>freq;
    cin>>n;
    vector<int> scores(n);
    for(int i=0;i<n;i++) {
        cin>>scores[i];
    }
    cin>>c;
    vector<int>cutoff(c);
    for(int i=0;i<c;i++) {
        cin>>cutoff[i];
    }
    sort(scores.begin(), scores.end());
    for(auto itr : scores){
        freq[itr]++;
    }
    for(auto itr : freq){
        cout<< itr.first<<" "<<itr.second<<endl;
    }
    for(int x : cutoff){
        int cnt=0;
        for(auto itr : freq){
            if(itr.first>x){
                cnt+=itr.second;
            }
        }
        cout<<"Cutoff: "<<x<<" is "<<cnt<<endl;
    }
    return 0;
}