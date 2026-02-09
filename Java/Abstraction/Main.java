import java.util.Scanner;

// Abstract class
abstract class Employee {

    int salary;

    // Method to take salary input
    void calculateSalary() {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter salary: ");
        salary = sc.nextInt();
    }

    // Concrete method
    void showSalary() {
        System.out.println("Salary is: " + salary);
    }

    // Abstract method
    abstract void employeeType();
}

// Full-time employee class
class FullTimeEmployee extends Employee {

    @Override
    void employeeType() {
        System.out.println("Employee Type: Full-Time");
        showSalary();
    }
}

// Part-time employee class
class PartTimeEmployee extends Employee {

    @Override
    void employeeType() {
        System.out.println("Employee Type: Part-Time");
        showSalary();
    }
}

// Main class
public class Main {
    public static void main(String[] args) {

        Employee emp;

        // Full-time employee
        emp = new FullTimeEmployee();
        emp.calculateSalary();
        emp.employeeType();

        System.out.println();

        // Part-time employee
        emp = new PartTimeEmployee();
        emp.calculateSalary();
        emp.employeeType();
    }
}
