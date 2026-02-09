class Example {
    static int count = 0; // static variable

    static void showCount() { // static method
        System.out.println("Count: " + count);
    }
}

 class Main{
    public static void main(String[] args) {
        // Access static variable and method without object
        Example.count = 5;
        Example.showCount();  // Output: Count: 5
    }
}
//non static 
class Example{
    int number=67;
    void showNumber(){
        System.out.println("Number: "+number);
    }

}
class Main{
    public static void main(String[] args){
        Example obj1= new Example();
        obj1.number=20;
        obj1.showNumber();
    }
}




// class Example {
//     int number; // non-static variable

//     void showNumber() { // non-static method
//         System.out.println("Number: " + number);
//     }
// }

// class Main{
//     public static void main(String[] args) {
//         Example obj1 = new Example();
//         obj1.number = 10;
//         obj1.showNumber(); // Output: Number: 10

//         Example obj2 = new Example();
//         obj2.number = 20;
//         obj2.showNumber(); // Output: Number: 20
//     }
// }
