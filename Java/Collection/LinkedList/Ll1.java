//default capacity is 0 and grows by 0
//by default doubly linked list
//non-contiguous
//stores dup val and null val
//follow insertion order ans non synchronized
import java.util.*;

class LinkedListDemo {
    public static void main(String[] args) {
        LinkedList<String> list = new LinkedList<>();

        // Add elements
        list.add("Apple");
        list.add("Banana");
        list.add("Mango");
        list.addFirst("Pear");
        list.addLast("Orange");
        System.out.println("LinkedList: " + list);

        // Access elements
        System.out.println("First: " + list.getFirst());
        System.out.println("Last: " + list.getLast());
        System.out.println("Element at index 2: " + list.get(2));

        // Remove elements
        list.removeFirst();
        list.removeLast();
        list.remove("Banana");
        System.out.println("After removal: " + list);

        // Check if list contains
        System.out.println("Contains Mango? " + list.contains("Mango"));

        // Size
        System.out.println("Size: " + list.size());

        // Iteration
        System.out.println("\nIterating with for-each:");
        for(String fruit : list) {
            System.out.println(fruit);
        }

        System.out.println("\nIterating with Iterator:");
        Iterator<String> itr = list.iterator();
        while(itr.hasNext()) {
            System.out.println(itr.next());
        }

        // Clear
        list.clear();
        System.out.println("After clear: " + list);
    }
}
