//int java.util package
//resizable
//default capacity-10
//grows by 1.5 times
// stores ele in sequential order
import java.util.*;

class ArrayListAllMethods {
    public static void main(String[] args) {

        // 1. Creating ArrayList
        ArrayList<String> fruits = new ArrayList<>();
        System.out.println("Initial list: " + fruits);

        // 2. Add elements
        fruits.add("Apple");
        fruits.add("Banana");
        fruits.add("Mango");
        fruits.add("Apple"); // duplicate allowed
        System.out.println("After add: " + fruits);

        // 3. Add element at specific index
        fruits.add(1, "Pear");
        System.out.println("After add at index 1: " + fruits);

        // 4. Get element at index
        System.out.println("Element at index 2: " + fruits.get(2));

        // 5. Set/replace element
        fruits.set(0, "Orange");
        System.out.println("After set (replace index 0): " + fruits);

        // 6. Remove element by index
        fruits.remove(3);
        System.out.println("After remove index 3: " + fruits);

        // 7. Remove element by object
        fruits.remove("Pear");
        System.out.println("After remove object Pear: " + fruits);

        // 8. Size & isEmpty
        System.out.println("Size: " + fruits.size());
        System.out.println("Is empty? " + fruits.isEmpty());

        // 9. Contains & containsAll
        System.out.println("Contains Mango? " + fruits.contains("Mango"));
        ArrayList<String> subList = new ArrayList<>();
        subList.add("Orange");
        subList.add("Banana");
        System.out.println("Contains all [Orange, Banana]? " + fruits.containsAll(subList));

        // 10. indexOf & lastIndexOf
        System.out.println("First index of Apple: " + fruits.indexOf("Apple"));
        System.out.println("Last index of Apple: " + fruits.lastIndexOf("Apple"));

        // 11. Iterate using for-each
        System.out.println("\nIterating using for-each:");
        for(String fruit : fruits) {
            System.out.println(fruit);
        }

        // 12. Iterate using Iterator
        System.out.println("\nIterating using Iterator:");
        Iterator<String> itr = fruits.iterator();
        while(itr.hasNext()) {
            System.out.println(itr.next());
        }

        // 13. Iterate using ListIterator forward + backward
        System.out.println("\nIterating using ListIterator:");
        ListIterator<String> litr = fruits.listIterator();
        System.out.println("Forward:");
        while(litr.hasNext()) {
            System.out.println(litr.next());
        }
        System.out.println("Backward:");
        while(litr.hasPrevious()) {
            System.out.println(litr.previous());
        }

        // 14. Sort & reverse
        Collections.sort(fruits);
        System.out.println("\nSorted list: " + fruits);
        Collections.sort(fruits, Collections.reverseOrder());
        System.out.println("Reverse sorted list: " + fruits);

        // 15. Search using binarySearch
        Collections.sort(fruits); // binarySearch requires sorted list
        int pos = Collections.binarySearch(fruits, "Banana");
        System.out.println("Index of Banana (binarySearch): " + pos);

        // 16. Convert to Array
        Object[] arr = fruits.toArray();
        System.out.println("Array: " + Arrays.toString(arr));

        // 17. Clear list
        fruits.clear();
        System.out.println("After clear: " + fruits);
    }
}
