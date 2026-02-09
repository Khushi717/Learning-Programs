import java.util.Scanner;

class LowMarksException extends Exception {
    public LowMarksException(String message) {
        super(message);
    }
}

public class StudentResult {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter student name: ");
        String name = sc.nextLine();

        System.out.print("Enter marks: ");
        int marks = sc.nextInt();

        try {
            if (marks < 50) {
                throw new LowMarksException("Student " + name + " failed with marks: " + marks);
            }
            System.out.println("PASS");

        } catch (LowMarksException e) {
            System.out.println("Exception Caught: " + e.getMessage());
        }
    }
}
