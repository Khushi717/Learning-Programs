import java.util.Scanner;
class InputWrong extends Exception {
    public InputWrong(String message) {
        super(message);
    }
}

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter a number:");

        String input = sc.nextLine();

        try {
            // Check if input is numeric
            if (!input.matches("\\d+")) { // regex checks if all characters are digits
                throw new InputWrong("enter a valid number"); // throw in try block
            }

            // If numeric, parse and print
            int number = Integer.parseInt(input);
            System.out.println(number);

        } catch (InputWrong e) {
            System.out.println(e.getMessage());
        }
    }
}
