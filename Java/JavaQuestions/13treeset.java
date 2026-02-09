// 13.	Solve below program using treeset
// 1.	Create a TreeSet of Strings to store fruit names.
// 2.	Add the following fruits to the TreeSet:
// o	"Banana"
// o	"Apple"
// o	"Mango"
// o	"Grapes"
// o	"Apple" (duplicate - should not be added)
// 3.	Display the contents of the TreeSet.
// 4.	Check whether "Mango" and "Orange" exist in the set.
// 5.	Remove "Grapes" from the set and display the updated set.
// 6.	Iterate and display all elements in sorted order.
// 7.	Display the total number of fruits in the set.
// 8.	Clear the entire set and confirm that it is empty.
// ________________________________________
// 🔍 Test Cases:
// Test Case	Operation	Expected Result
// TC1	Add fruits + duplicate check	Only unique fruits, sorted in alphabetical order
// TC2	Search "Mango" and "Orange"	Mango = true, Orange = false
// TC3	Remove "Grapes"	Set no longer contains "Grapes"
// TC4	Iterate and display elements	Output in alphabetical order
// TC5	Display size	Count of unique fruits after modifications
// TC6	Clear set and check if empty	Set becomes empty, isEmpty() returns true
import java.util.*;
class Main{
    public static void main(String[] args) {
        TreeSet<String> ts=new TreeSet<>();
        Scanner sc=new Scanner(System.in);
          while(sc.hasNextLine()){
            String fruit=sc.nextLine();
            if(fruit.equalsIgnoreCase("stop")){
                break;
            }
            fruits.add(fruit);
          }
    }
}
import java.util.*;
class Main{
    public static void main(String[] args) {
        TreeSet<String> fruits=new TreeSet<>();
        fruits.add("Banana");
        fruits.add("Apple");
        fruits.add("Mango");
        fruits.add("Grapes");
        fruits.add("Apple");
        System.out.println("Contents of fruits : "+fruits);
        System.out.println("Contains Mango? "+ fruits.contains("Mango"));
        System.out.println("Contains Orange? "+ fruits.contains("Orange"));
        fruits.remove("Grapes");
        System.out.println("After removing grapes : "+fruits);
        // treeset do not have list iterator beacuse it is not list ListIterator<String> itr=fruits.listIterator();
        for(String f : fruits){
            System.out.println(f);
        }
        System.out.println("No:"+fruits.size());
        fruits.clear();
        System.out.println("Is fruits empty now?"+fruits.isEmpty());
    }
}