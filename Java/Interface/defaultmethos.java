interface Animal {
    void sound();  // abstract

    default void eat() {  // default method with body
        System.out.println("Animal is eating");
    }
}

class Dog implements Animal {
    @Override
    public void sound() {
        System.out.println("Dog barks");
    }
}

 class Main {
    public static void main(String[] args) {
        Dog d = new Dog();
        d.sound(); 
        d.eat();   
    }
}
