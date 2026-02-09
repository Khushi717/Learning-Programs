// 0 1 2 3 4 5 6 3 2 1 0






#include<iostream>
#include<algorithm>
using namespace std;
int binarySearch(int arr[], int n){
    int left=0;
    int right=n-1;
    int mid=(left+right)/2;
    int ans=0;
    while(left<right){
        if(arr[mid+1]>arr[mid] && arr[mid-1]<arr[mid]){
            left=mid+1;
        }
        if(arr[mid-1]>arr[mid] && arr[mid+1]<arr[mid]){
            right=mid-1;
        }
        if(arr[mid-1]<arr[mid]<arr[mid+1]){
            int ans=arr[mid];
        }
    }
    return ans;
}

int main(){
    int n;
    cout<<"Enter n : ";
    cin>>n;
    int arr[n];
    for(int i=0;i<n;i++){
        cin>>arr[i];
    }
    int result=binarySearch(arr, n);
    cout<<"The peak value is : "<<result;

    return 0;
}