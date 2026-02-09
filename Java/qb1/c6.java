// Q6 find minimum and maximum element in a tree set
import java.util.*;
class Chonchu{
    public static void main(String args[]){
        TreeSet<Integer> ts=new TreeSet<>();
        Scanner sc=new Scanner(System.in);
        String s=sc.nextLine();
        String ss[]=s.split(" ");
       for (String w : ss) {
            ts.add(Integer.parseInt(w));
        }
        System.out.println(ts.first());
        System.out.println(ts.last());
    }
}


//