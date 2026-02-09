class Parent {
    void displayParent() {
        System.out.println("Parent class method");
    }
}

class Child extends Parent {
    void displayChild() {
        System.out.println("Child class method");
    }
}

class Main {
    public static void main(String args[]) {
        Child c = new Child();
        c.displayParent(); 
        c.displayChild();  
    }
}