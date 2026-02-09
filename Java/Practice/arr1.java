import java.util.Scanner;
public class  arr1{
    public static void main(String[] args) {
    System.out.println("Enter size of array: ");
    Scanner sc= new Scanner(System.in);
    int n=sc.nextInt();
int[] arr= new int[n];
 System.out.println("Enter " +n+ " elements of array: ");
 for(int i=0;i<n;i++){
    arr[i]=sc.nextInt();
 }

 int largest=arr[0];
 int smallest= arr[0];

 for(int i=0;i<n;i++){
    if(arr[i]>largest){
        largest=arr[i];
    }
    if(arr[i]<smallest){
        smallest=arr[i];
    }
 }

 System.out.println("Largest element: " + largest);
 System.out.println("Smallest element: " + smallest);
 System.out.println("Khushi Tomar-202401100500086");
}
}