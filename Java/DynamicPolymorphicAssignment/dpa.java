class Animal {
    void sound() {
        System.out.println("Animal makes a sound");
    }
}

class Dog extends Animal {
    @Override
    void sound() {
        System.out.println("Dog barks");
    }
}

class Cat extends Animal {
    @Override
    void sound() {
        System.out.println("Cat meows");
    }
}

 class Main {
    public static void main(String[] args) {
        Animal a;

        a = new Dog(); // dynamic polymorphic assignment
        a.sound();     // Output: Dog barks

        a = new Cat(); // dynamic polymorphic assignment
        a.sound();     // Output: Cat meows
    }
}
