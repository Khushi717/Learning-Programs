//can access in both forward and backward direction
import java.util.*;
class AB{
    public static void main(String[] args) {
        ArrayList<String> al=new ArrayList<>();
        al.add("A");
        al.add("B");
        al.add("C");

        ListIterator<String> liitr=al.listIterator();
        System.out.println("Forward Traveral:");
        while(liitr.hasNext()){
            String item=liitr.next();
            System.out.println(item);

            if(item.equals("B")){
                liitr.set("Z");
            }
        }
        System.out.println(al);
        System.out.println("\nBackward Traversal:");
        while(liitr.hasPrevious()){
            System.out.println(liitr.previous());
        }
        liitr=al.listIterator();
        liitr.next();
        liitr.add("X");
        System.out.println("\nAfter adding X:");
        System.out.println(al);

        liitr = al.listIterator();
        while(liitr.hasNext()){
            if(liitr.next().equals("C")){
                liitr.remove();
            }
        }
         System.out.println("\nAfter removing C:");
        System.out.println(al);
    }
}