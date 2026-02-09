import java.util.*;
class A implements Comparable<A>{
    int stdId;
    String name;
    int rollNo;
    A(int stdId,String name,int rollNo){
        this.stdId=stdId;
        this.name=name;
        this.rollNo=rollNo;
    }
    public int compareTo(A a){ 
        //override method of Comparable Interface
        return this.stdId-a.stdId;//1 then first ele> second ele
    }
    public static void main(String args[]){
        ArrayList <A> li=new ArrayList<>();
        A ob1=new A(23,"Khushi",5);
        li.add(ob1);
        li.add(new A(13,"Annie",3));
        for( A s : li){
        System.out.println(s.stdId+s.name+s.rollNo);
       }
        Collections.sort(li);
       // System.out.println(li);
       for( A s : li){
        System.out.println(s.stdId+s.name+s.rollNo);
       }
    }
}