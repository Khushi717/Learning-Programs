import java.util.*;
// 1.	Store the student names (String) as keys and their marks (Integer) as values.
// 2.	Print all student details.
// 3.	Search for a particular student and print their marks.
// 4.	Remove a student from the HashMap.
// 5.	Print the updated HashMap.
// 6.	Check for map is empty or not

// 14.	Write a Java program using HashMap to:
// 1.	Store the student names (String) as keys and their marks (Integer) as values.
// 2.	Print all student details.
// 3.	Search for a particular student and print their marks.
// 4.	Remove a student from the HashMap.
// 5.	Print the updated HashMap.
// 6.	Check for map is empty or not

HashMap<String,Integer> mpp=new HashMap<>();
mpp.put("Khushi",1);
mpp.put("Chonchu",2);
mpp.put("Annie",3);
for(Map.Entry<String,Integer>entry : mpp.entrySet()){
    System.out.println(entry.getKey()+"=>"+mpp.getValue());
}
String searchStudent="Annie";
if(mpp.containsKey(searchStudent)){
    System.out.println(mpp.get(searchStudent));
}
for(Map.Entry<string,Int>entry : mpp.entrySet()){
    System.out.println(entry.getKey()+entry.getVaValue());
}
class A{
    public static void main(String[] args) {
        HashMap<String,Integer> mpp=new HashMap<>();
        mpp.put("Khushi",90);
        mpp.put("Chonchu",100);
        mpp.put("Annie",89);
        mpp.put("Panda",78);
        for(Map.Entry<String,Integer>entry : mpp.entrySet()){
            System.out.println(entry.getKey()+"=>"+entry.getValue());
        }
        String searchStudent="Annie";
        if(mpp.containsKey(searchStudent)){
            System.out.println("Annie's marks : "+mpp.get(searchStudent));
        }
        mpp.remove("Panda");
        System.out.println("Panda removed");
         System.out.println("Updated student details:");
        for(Map.Entry<String,Integer>entry : mpp.entrySet()){
            System.out.println(entry.getKey()+"=>"+entry.getValue());
        }
         System.out.println("Is map empty? : "+mpp.isEmpty());
    }
}