
import java.util.*;
class priorityQueue{
    public static void main(String[] args) {
        PriorityQueue<Integer> pq=new PriorityQueue<>();
        System.out.println("Queue started");
        pq.add(20);
        pq.add(10);
        pq.add(5);
        System.out.println(pq);
        System.out.println(pq.peek());
    }
}