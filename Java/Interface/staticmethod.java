interface Animal {
    static void info() {
        System.out.println("All animals have a sound");
    }
}

 class Main {
    public static void main(String[] args) {
        Animal.info();
    }
}
