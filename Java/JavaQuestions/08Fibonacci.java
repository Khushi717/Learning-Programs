import java.util.*;
class Main{
    static int fib(int n){
        if(n<=1){
            return n;
        }
       return fib(n-1)+fib(n-2);
    }
    public static void main(String[] args) {
        Scanner scan=new Scanner(System.in);
        int a=scan.nextInt();
            int ans=fib(a);
            System.out.println(ans);
    }
}