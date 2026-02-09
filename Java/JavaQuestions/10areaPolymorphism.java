import java.util.*;
class A{
    void calc(double rad){
        double area=(3.14*rad*rad)/2;
        System.out.println("Area of circle : "+area);
    }
    void calc(double s1,double s2,double s3){
        double s=(s1+s2+s3)/2;
        double area=Math.sqrt(s*(s-s1)*(s-s2)*(s-s3));
        System.out.println("Area of triangle : "+ area);
    }
}

class Main{
    public static void main(String[] args) {
        Scanner scan=new Scanner(System.in);
        double radsemi=scan.nextDouble();
        double s1=scan.nextDouble();
        double s2=scan.nextDouble();
        double s3=scan.nextDouble();
        A ob=new A();
        ob.calc(radsemi);
        ob.calc(s1,s2,s3);
    }
}