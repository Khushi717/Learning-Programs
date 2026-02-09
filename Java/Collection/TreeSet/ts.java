import java.util.*;
class Main{
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        int n=sc.nextInt();
        TreeMap<String,Integer> tm=new TreeMap<>(); 
        for(int i=0;i<n;i++){
            String s=sc.next();
            int num=sc.nextInt();
            if(tm.containsKey(s)){
                tm.put(s,tm.get(s)+num);
            }
            else{
                 tm.put(s,num);
            }
        }
        tm.forEach((key,value)->System.out.println(key+": "+value));
    }
}