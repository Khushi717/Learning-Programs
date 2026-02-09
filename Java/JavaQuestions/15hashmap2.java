// 15.	Write a Java program using HashMap to:
// 1.	Insert employee details (EmployeeID → Salary).
// 2.	Print all employee details.
// 3.	Search for a given EmployeeID and print the salary.
// 4.	Remove an employee using their EmployeeID.
// 5.	Print the updated employee list.
// 6.	Check for map is empty or not
import java.util.*;
class A{
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        HashMap<String,Integer> mpp=new HashMap<>();
        while(sc.hasNextLine()){
            String line=sc.nextLine();
            String part[]=line.split(" ");
            if(part[0].equalsIgnoreCase("Stop")){
                break;
            }
            int p1=Integer.parseInt(part[1]);
            mpp.put(part[0],p1);
        }
        for(Map.Entry<String,Integer>entry : mpp.entrySet()){
            System.out.println(entry.getKey()+"=>"+entry.getValue());
        }
        // HashMap<Integer,Integer> mpp= new HashMap<>();
        // mpp.put(1,1000);
        // mpp.put(2,2000);
        // mpp.put(3,3000);
        // mpp.put(4,4000);
        // for(Map.Entry<Integer,Integer>entry : mpp.entrySet()){
        //     System.out.println(entry.getKey()+"=>"+entry.getValue());
        // }
        // Integer empId=2;
        // if(mpp.containsKey(empId)){
        //     System.out.println("Salary for empId is : "+mpp.get(empId));
        // }
        // mpp.remove(2);
        // System.out.println("Emp Id 2 is removed");
        // System.out.println("Is Map empty? : "+mpp.isEmpty());
    }
}