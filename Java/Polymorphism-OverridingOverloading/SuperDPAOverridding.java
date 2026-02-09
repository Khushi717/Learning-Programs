
Superclass
class Animal {
    void sound() {
        System.out.println("Animal makes a sound");
    }
}

// Subclass
class Dog extends Animal {
    void sound() {
        System.out.println("Dog barks");
    }

    void parentSound() {
        super.sound();  // call superclass method
    }
}

class Main {
    public static void main(String args[]) {
        // Dynamic Polymorphic Assignment
        Animal a= new Dog();  // subclass object assigned to superclass reference

        a.sound(); // ✅ Calls Dog's sound() method (runtime decides)
        
        // Using subclass object to access super method
        Dog d = new Dog();
        d.sound();       // Calls Dog's method
        d.parentSound(); // Calls Animal's method using super
    }
}

