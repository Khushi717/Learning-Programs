// 18.	A company maintains a task list where each task is stored in the order it was assigned.
// You are asked to use LinkedList in Java to manage the tasks with the following operations:
// 1.	Add tasks to the list.
// 2.	Display all tasks.
// 3.	Remove the first task (task completed).
// 4.	Remove the last task (canceled).
// 5.	Search for a particular task in the list.
import java.util.*;
class A{
    public static void main(String args[]){
        LinkedList<String> ll=new LinkedList<>();
                while (sc.hasNextLine()) {
            String element = sc.nextLine();

            if (element.equalsIgnoreCase("stop")) {
                break;  // exit loop when user types "stop"
            }

            list.add(element);  // add element to the end of LinkedList
        }

        // ll.add("Chonchu");
        // ll.add("Khushi");
        
        System.out.println("List : "+ll);
        System.out.println("Removing first task as completed :  "+ll.removeFirst());
        System.out.println("Removing last task as cancelled :  "+ll.removeLast());
        String searchElement="Chonchu";
        if (ll.contains(searchElement)) {
            System.out.println(searchElement + " is found in the LinkedList.");
        }

    }
}