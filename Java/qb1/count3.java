import java.util.*;
class Chonchu{
    public static void main(String args[]){
        Scanner sc=new Scanner(System.in);
        ArrayList<String> ls=new ArrayList<>();
        String s=sc.nextLine();
        String []ss=s.split(" ");
        for(String w:ss){
            ls.add(w);
        }
        String tar=sc.nextLine();
        System.out.println(ls);
        int cnt=0;
        for(String k:ls){
            if(k.equals(tar))cnt++;
        }
        System.out.println(cnt);
    }
}