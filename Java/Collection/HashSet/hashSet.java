
import java.util.*;
class hashSet{
    public static void main(String[] args) {
        HashSet<Integer> hs=new HashSet<>();
        System.out.println("HashSet started");
        hs.add(20);
        hs.add(20);
        hs.add(20);
        hs.add(26);
        hs.add(9);
        hs.add(1);
        System.out.println(hs);
        System.out.println(hs.size());
    }
}