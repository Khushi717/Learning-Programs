import java.util.*;
class arl{
    public static void main(String[] args) {
        List<String> li=new ArrayList<>();//reference of list-Interface
        li.add("Hello");
        li.add("Ms Chonchu");
        // for(String l : li){
        //     System.out.println(l);
        // }
        // while(itr.hasNext()){
        //     System.out.println(itr.next());
        // }
        // ListIterator<String> i=li.listIterator();
        // li.remove("Hello");
            li.remove("Hello");
        ListIterator<String> itr=li.listIterator(li.size());
        while(itr.hasPrevious()){
            System.out.println(itr.previous());
        }

    }
}
class arl{
    public static void main(String[] args) {
        List<String> li=new ArrayList<>();
        li.add("Mr Chonchu");
        li.add("Ms Chonchu");
        li.add("Mr Panda");
        li.add("Anjali");
        ListIterator<String> i=li.ListIterator();
        while(i.hasnext()){
            System.out.println(i.next());
        }    
        li.remove("Anjali");
        ListIterator<String> itr=li.ListIterator();
        while(itr.hasnext()){
            System.out.println(itr.next());
        }  
        int st=li.indexOf("Mr Panda"); 
        System.out.prinln(st);
        

    }
}