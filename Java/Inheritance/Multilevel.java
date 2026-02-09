class GrandParent {
    void grandParentMethod() {
        System.out.println("Grandparent method");
    }
}

class Parent extends GrandParent {
    void parentMethod() {
        System.out.println("Parent method");
    }
}

class Child extends Parent {
    void childMethod() {
        System.out.println("Child method");
    }
}

class Main {
    public static void main(String args[]) {
        Child c = new Child();
        c.grandParentMethod();
        c.parentMethod();
        c.childMethod();
    }
}
