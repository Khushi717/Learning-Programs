import java.util.*;
class swi{
    public static void main(String[] args){
        Scanner sc=new Scanner(System.in);
        int a=sc.nextInt();
        String st=switch(a){
            case 1->"This is case 1";
            case 2->{System.out.println("This is case 2");
            yield "ram";}
            case 3->"This is case 3";
            default->"This is case default";
        };
        System.out.println(st);
    }
}