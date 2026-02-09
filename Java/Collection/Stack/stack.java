import java.util.*;
class stack{
    public static void main(String[] args) {
        Stack<Integer> st=new Stack<>();
        System.out.println("Capacity1");
        System.out.println(st.capacity());
        st.push(20);
        st.push(30);
        st.push(40);
        st.pop();
        System.out.println(st);
        System.out.println(st.peek());
        System.out.println("Capacity2");
        System.out.println(st.capacity());
        System.out.println("Size");
        System.out.println(st.size());
        PriorityQueue<Integer> pq=new PriorityQueue<>();
        System.out.println("Queue started");
        pq.add(20);
        pq.add(35);
        pq.add(40);
        System.out.println(pq.peek);
    }
}