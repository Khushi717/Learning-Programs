interface X {
    void methodX();
}

class Parent {
    void parentMethod() {
        System.out.println("Parent method");
    }
}

class Child1 extends Parent implements X {
    public void methodX() {
        System.out.println("Interface X method implemented in Child1");
    }
}

class Child2 extends Parent {
    void child2Method() {
        System.out.println("Child2 method");
    }
}                           
class Main {
    public static void main(String args[]) {
        Child1 c1 = new Child1();
        Child2 c2 = new Child2();

        c1.parentMethod(); // inherited from Parent
        c1.methodX();      // interface method
        c2.parentMethod(); // inherited from Parent
        c2.child2Method();
    }
}
