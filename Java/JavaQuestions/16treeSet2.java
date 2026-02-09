// 16.	Write a Java program using TreeSet to:
// 1.	Insert a set of integers.
// 2.	Print all elements in sorted order.
// 3.	Check tree is empty or not
// 4.	Check tree has only one element then smallest and largest will be equal
// 5.	Find and print the smallest element.
// 6.	Find and print the largest element.
import java.util.*;
class A{
    public static void main(String[] args) {
        TreeSet<Integer> ts=new TreeSet<>();
        Scanner sc=new Scanner(System.in);
        while(sc.hasnextLine()){
            int n=sc.nextLine();
            ts.add(n);
        }
        for(int s : ts){
            System.out.println(s);
        }
        System.out.println("First ele:"ts.first());
        System.out.println("Second ele:"ts.first());

    }
}