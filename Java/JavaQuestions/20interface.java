import java.util.*;
interface Sports{
    void play(String name); //abstract
}
interface Study{
    void read(String name); //abstract
}
class B implements Sports,Study{
    public void play(String name){
        System.out.println(name + " is playing football.");
    }
    public void read(String name){
        System.out.println(name + " is studying Java.");
    }
}
class A{
    public static void main(String[] args) {
        Scanner scan=new Scanner(System.in);
        String name=scan.next();
        B ob=new B();
        ob.play(name);
        ob.read(name);
    }
}
interface Sports{
    void play(String name);
}
interface Study{
void read(String name);
}
class B implements Sports,Study{
    void play(String name){

    }
    void read(String name){
        
    }
}

import java.util.*;
class Main(){
    public static void main(String[] args){
        Scanner sc=new Scanner(System.in);
        String  name=sc.next();
        B ob=new b();
        ob.play(name);
        ob.read(name);
    }
}
















