#include<iostream>
#include<vector>
#include<algorithm>
using namespace std;
int main(){
    int n;
    cout<<"Enter vector size : ";
    cin>>n;
    vector<int> vec(n);
    cout<<"Enter "<<n<<" elements: ";
    for(int i=0;i<n;i++){
        cin>>vec[i];
    }
    int largest=vec[0];
    for(int i=0;i<n;i++){
        if(vec[i]>largest){
            largest=vec[i];
        }
    }
    cout<<largest;
    // sort(vec.begin(),vec.end());
    // cout<<"Largest element is : "<<vec[n-1];
    return 0;
}