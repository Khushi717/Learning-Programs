import java.util.Scanner;
public class StringOps{
    public static void main(String[] args){
        Scanner sc=new Scanner(System.in);
        System.out.print("Enter a string: ");
        String str=sc.nextLine();
        int length=str.length();
        System.out.println("Number of characters: "+length);
        String reversed="";
        for(int i=length-1;i>=0;i--){
            reversed=reversed+str.charAt(i);
        }
        System.out.println("Reversed string: "+reversed);
        if(str.equalsIgnoreCase(reversed)){
            System.out.println("The string is a Palindrome.");
        }else{
            System.out.println("The string is NOT a Palindrome.");
        }
        System.out.println("Khushi Tomar-202401100500086");
    }
}
