#include <bits/stdc++.h>
using namespace std;

int main() {
    ios::sync_with_stdio(false);
    cin.tie(nullptr);
    int t;
    cin>>t;
    while(t--){
        int n;
        long long k;
        cin>>n>>k;
        vector<long long> vec(n);
        for(int i=0;i<n;i++){
            cin>>vec[i];
        }
        multiset<long long> st;
        int l=0;
        int ans=0;
        for(int itr=0;itr<n;itr++){
            st.insert(vec[itr]);
            while(*st.rbegin()-*st.begin()>k){
                st.erase(st.find(vec[l]));
                l++;
            }
            ans=max(ans,itr-l+1);
        }
       cout<<ans<<"\n"; 
    }
    return 0;
    }