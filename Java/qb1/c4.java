import java.util.*;
class Chonchu{
    public static void main(String args[]){
        Scanner sc=new Scanner(System.in);
        ArrayList<Integer> ls=new ArrayList<>();
        String s=sc.nextLine();
        String []ss=s.split(" ");
        for(String w:ss){
            ls.add(Integer.parseInt(w));
        }
        int maxi=0;
        System.out.println(ls);
        for(int k:ls){
            if(maxi<k) maxi=k;
        }
        System.out.println(maxi);
    }
}