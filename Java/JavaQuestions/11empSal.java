
import java.util.Scanner;
abstract class A{
  abstract void calc(int a,int b);
}
class B extends A{
    public void calc(int a,int b){
        System.out.println("Manager salary : "+(a+b));
    }
}
class C extends A{
    public void calc(int a,int b){
        System.out.println("Employee salary : "+(a+b));
    }
}

class Main{
        public static void main(String[] args) {
        Scanner scan=new Scanner(System.in);
        int man=scan.nextInt();
        int manext=scan.nextInt();
        int emp=scan.nextInt();
        int empext=scan.nextInt();
        A ob=new B();
        ob.calc(man,manext);
        A ob2=new C();
        ob2.calc(emp,empext);
    }
}