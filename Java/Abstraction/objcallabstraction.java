abstract class Animal {
    abstract void sound();  // Abstract method

    void eat() {            // Regular method
        System.out.println("Animal is eating");
    }
}


class Dog extends Animal {           
    //Override
    void sound() {                                           
        System.out.println("Dog barks");
    }
}

class Cat extends Animal {
    //Override
    void sound() {
        System.out.println("Cat meows");
    }
}

 class Main {
    public static void main(String[] args) {

        Animal d = new Dog(); 
        d.sound();             
        d.eat();               

        Animal c = new Cat();
        c.sound();             
        c.eat();               
    }
}
