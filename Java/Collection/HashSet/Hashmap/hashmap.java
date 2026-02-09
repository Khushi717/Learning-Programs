
import java.util.*;
class hashMap{
    public static void main(String[] args) {
        Scanner sc new Scanner(System.in);

        HashMap<Integer,String> hs=new HashMap<>();
        System.out.println("HashMap started");
        hs.put(20,"MR Chonchu");
        hs.put(20,"MS Chonchu");
        hs.put(20,"Mr Panda");
        hs.put(26,"Ms Panda");
        System.out.println(hs);
        System.out.println(hs.size());
        System.out.println(hs.containsValue("Mr Panda"));
    }
}