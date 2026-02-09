import java.util.*;
abstract class Bank{
abstract void getBalance(int c);
}
class BankA extends Bank{
    public void getBalance(int c){
        System.out.print("Bank Balance$ "+c+" ");
    }
}
class BankB extends Bank{
     public void getBalance(int c){
        System.out.print("Bank Balance$ "+c+" ");
    }
}
class BankC extends Bank{
     public void getBalance(int c){
        System.out.print("Bank Balance$ "+c+" ");
    }
}
class Main{

    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        // int c1=sc.nextInt();
        // int c2=sc.nextInt();
        // int c3=sc.nextInt();
        // Bank ob=new BankA();
        // ob.getBalance(c1);
        // Bank ob2=new BankB();
        // ob2.getBalance(c2);
        // Bank ob3=new BankC();
        // ob3.getBalance(c3);


         String s1=sc.next();
        String s2=sc.next();
        String s3=sc.next();
        int c1=Integer.parseInt(s1.replace("$"," ").trim());
        int c2 = Integer.parseInt(s2.replace("$", "").trim());
        int c3 = Integer.parseInt(s3.replace("$", "").trim());
        Bank ob=new BankA();
        ob.getBalance(c1);
        Bank ob2=new BankB();
        ob2.getBalance(c2);
        Bank ob3=new BankC();
        ob3.getBalance(c3);
    }
}