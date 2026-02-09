
import java.util.*;
class treeSet{
    public static void main(String[] args) {
        TreeSet<Integer> ts=new TreeSet<>();
        System.out.println("TreeSet started");
        ts.add(20);
        ts.add(20);
        ts.add(20);
        ts.add(26);
        ts.add(9);
        ts.add(1);
        ts.remove(9);
        System.out.println(ts);
        System.out.println(ts.size());

    }
}