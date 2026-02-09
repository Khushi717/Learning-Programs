class B{
    String name;
    int age;
    B(String n, int a){
        this.name=n;
        this.age=a;

    }
    B(B o){
        this.name=o.name;
        this.age=o.age;
        System.out.println("Copy Constructor is called");
    }
    void display(){
        System.out.println("Name "+name+" Age "+age);
    }
}

class A{
    public static void main(String args[]){
        B obj1=new B("Ananyaa Singh",15);
        B obj2=new B(obj1);
       obj1.display();
       obj2.display();
    }
}