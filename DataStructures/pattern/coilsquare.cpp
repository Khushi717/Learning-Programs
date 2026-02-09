#include<iostream>
using namespace std;
int main(){
int n;
cin>>n;
for(int i=0;i<2*n-1;i++){
    for(int j=0;j<2*n-1;j++){
        int left=j;
        int top=i;
        int right=(2*n-2)-j;
        int bottom=(2*n-2)-i;
        int result=n-min(min(left,right),min(top,bottom));
        cout<<result;
    }
    cout<<endl;
}
    return 0;
}