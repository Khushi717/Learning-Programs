import java.util.Scanner;
public class greatesnum{
    public static void main(String args[]){
        Scanner scan=new Scanner(System.in);
        System.out.println("Enter a:");
        int a=scan.nextInt();
        System.out.println(a);
        System.out.println("Enter b:");
        int b=scan.nextInt();
        System.out.println(b);
        System.out.println("Enter c:");
        int c=scan.nextInt();
        System.out.println(c);
        if(a>b && a>c){
            System.out.println("a is greatest "+a);
        }
        if(b>a && b>c){
            System.out.println("b is greatest "+b);
        }
        if(c>a && c>b){
            System.out.println("c is greatest "+c);
        }
        else{
            System.out.println("All are Equal");
        }
        System.out.println("Khushi Tomar-202401100500086");
    }
}