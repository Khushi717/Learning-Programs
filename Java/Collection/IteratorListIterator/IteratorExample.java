//lies in java.util package
//core component to traverse and access data in collection
//traverses in sequential manner
//acces in forward direction and can access elements
import java.util.*;
class M{
    public static void main(String[] args) {
        ArrayList<String> al=new ArrayList<>();
        al.add("Apple");
        al.add("Banana");
        al.add("Pear");
        Iterator<String> itr=al.iterator();
        while(itr.hasNext()){
            String fruits=itr.next();
            System.out.println(fruits);
            if(fruits.equals("Pear")){
                itr.remove();
            }
        }
        System.out.println("After removal: "+al);
    }
}