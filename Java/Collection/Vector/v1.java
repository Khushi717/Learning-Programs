//introduced in jdk 1.0
//lies in java util package
// resizable array-data structure
//synchronized collection-works on multi threads
//insertion oreder
//null and dup values
//non contiguous
import java.util.*;

class VectorDemo {
    public static void main(String[] args) {
        Vector<String> fruits = new Vector<>();

        // Add elements
        fruits.add("Apple");
        fruits.add("Banana");
        fruits.add("Mango");
        fruits.add(1, "Pear");      // add at index 1
        fruits.addElement("Orange"); // legacy method
        System.out.println("Vector: " + fruits);

        // Access elements
        System.out.println("First element: " + fruits.firstElement());
        System.out.println("Last element: " + fruits.lastElement());
        System.out.println("Element at index 2: " + fruits.get(2));

        // Remove elements
        fruits.remove("Banana");
        fruits.remove(0); // remove first
        System.out.println("After removal: " + fruits);

        // Remove all elements (legacy method)
        fruits.removeAllElements();
        System.out.println("After removeAllElements(): " + fruits);

        // Capacity
        Vector<Integer> numbers = new Vector<>(5, 3); // initial capacity 5, increment 3
        numbers.add(10);
        numbers.add(20);
        numbers.add(30);
        System.out.println("Numbers Vector: " + numbers);
        System.out.println("Current capacity: " + numbers.capacity());
    }
}
