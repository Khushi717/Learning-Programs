interface Animal {
    default void eat() {
        common();  // calling private method
        System.out.println("Eating food");
    }

    private void common() {  // private helper method
        System.out.println("This is common for all animals");
    }
}
class Dog implements Animal {}

 class Main {
    public static void main(String[] args) {
        Dog d = new Dog();
        d.eat();
    }
}
