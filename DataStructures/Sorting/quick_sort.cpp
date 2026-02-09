#include<iostream>
using namespace std;
int partition(int arr[],int low,int high){
    int pivot=arr[high];
    int i=low-1;
    for(int j=low;j<high;j++){
        if(arr[j]<pivot){
            i++;
            swap(arr[i],arr[j]);
        }
    }
    swap(arr[i+1],arr[high]);
    return i+1;
}
void quick_sort(int arr[],int low,int high){
    if(low<high){
    int mid=partition(arr,low,high);
    quick_sort(arr,0,mid-1);
    
    quick_sort(arr,mid+1,high);
    }
}
display(int arr[],int n){
    for(int i=0;i<n;i++){
        cout<<arr[i]<<" ";
    }
}
int main(){
    int n;
    cout<<"Enter array size:"<<endl;
    cin>>n;
    int arr[n];
    cout<<"Enter array :"<<endl;
    for(int i=0;i<n;i++)
    cin>>arr[i];
    cout<<"Elements before sorting are : "<<endl;
    display(arr,n);
    quick_sort(arr,0,n-1);
    cout<<"Elements agter sorting are : "<<endl;
    display(arr,n);
}
