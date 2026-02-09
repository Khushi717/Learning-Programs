import java.util.*;
class abs{
    public static void main(String[] arr){
        ArrayList<Integer> al=new ArrayList<>();
        al.add(100);
        al.add(10000);
        al.add(1);
        al.add(0);
               al.forEach((a)->System.out.println(a));
                  al.forEach(System.out::println);
}
}