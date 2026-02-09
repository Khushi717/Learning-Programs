// 1.	Push elements into a stack.
// 2.	Display all elements in the stack.
// 3.	Pop the top element. // alwys check stack isEmpty() while pop and peek
// 4.	Peek at the top element without removing it.
// 5.	Search for a given element in the stack.
import java.util.*;
class A{
    public static void main(String[] args) {
        Stack<Integer> st=new Stack<>();
          while (sc.hasNextLine()) {
            String element = sc.nextLine();

            if (element.equalsIgnoreCase("stop")) {
                break;  // stop input
            }

            st.push(element);  // push element to stack
        }
        // st.push(1);
        // st.push(2);
        // st.push(3);
        // st.push(4);
        System.out.println("Elements in stack : "+st);
        st.pop();
        System.out.println("Elements in stack : "+st);
        System.out.println("Peek ele in stack : "+st.peek());
        int searchele=3;
        System.out.println("pos of search ele in stack : "+st.search(searchele));
    }
}