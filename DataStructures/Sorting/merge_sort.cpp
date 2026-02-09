#include<iostream>
using namespace std;
void merge(int arr[20],int low,int mid,int high){
    int k=low;
    int temp[20];
    int i=low;
    int j=mid+1;
    while(i<=mid && j<=high){
        if(arr[i]<=arr[j]){
            temp[k]=arr[i];
            i++;
        }
        else{
            temp[k]=arr[j];
            j++;
        }
        k++;
    }
    if(i<=mid){
        for(int chonchu=i;chonchu<=mid;chonchu++){
            temp[k++]=arr[chonchu];
        }
    }
    if(j<=high){
        for(int chonchu=j;chonchu<=high;chonchu++){
            temp[k++]=arr[chonchu];
        }
    }
    for(int u=low;u<=high;u++){
        arr[u]=temp[u];
    }

}
void display(int arr[20],int n){
    for(int i=0;i<n;i++){
        cout<<arr[i]<<" ";
    }cout<<"\n";
}
void splitandMerge(int arr[20],int low,int high){
    if(low<high){
        int mid=(high+low)/2;
        splitandMerge(arr,low,mid);
        splitandMerge(arr,mid+1,high);
        merge(arr,low,mid,high);
    }
}
int main(){
    int arr[20],i,n;
    cout<<"Enter array size : ";
    cin >> n;
    cout<<"Enter "<<n<<" elements : ";
    for(int i=0;i<n;i++){
        cin >> arr[i];
    }
    cout<<"Before sorting the elements are : ";
    display(arr , n);
    splitandMerge(arr,0,n-1);
    cout<<"After sorting the elements are : ";
    display(arr,n);
    return 0;
}