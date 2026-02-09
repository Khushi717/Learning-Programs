class B{
    String name;
    int age;
    B(String n, int a){
        this.name=n;
        this.age=a;

    }
    void display(){
        System.out.println("Name "+name+" Age "+age);
    }
    void display2(){
        System.out.println("Name "+this.name+" Age "+this.age);
    }
}

class A{
    public static void main(String args[]){
        B obj1=new B("Ananyaa Singh Tomar Rana",100);
        obj1.display();

        B obj=new B("Khushi Singh Tomar Rana",19);
        obj.display2();
    }
}