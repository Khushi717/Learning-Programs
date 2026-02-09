class Parent {
    void parentMethod() {
        System.out.println("Parent method");
    }
}

class Child1 extends Parent {
    void child1Method() {
        System.out.println("Child1 method");
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

        c1.parentMethod();
        c1.child1Method();

        c2.parentMethod();
        c2.child2Method();
    }
}
