class Student {
    // Step 1: Private variables
    private String name;
    private int age;

    // Step 2: Getter method for name
    public String getName() {
        return name;
    }

    // Step 3: Setter method for name
    public void setName(String name) {
        this.name = name;
    }

    // Getter method for age
    public int getAge() {
        return age;
    }

    // Setter method for age with validation
    public void setAge(int age) {
        if (age > 0) {          // validation to avoid negative age
            this.age = age;
        } else {
            System.out.println("Age must be positive");
        }
    }
}

 class Main {
    public static void main(String[] args) {
        Student s = new Student();

        // Using setter methods to set values
        s.setName("Anjali");
        s.setAge(20);

        // Using getter methods to get values
        System.out.println("Name: " + s.getName());  // Output: Anjali
        System.out.println("Age: " + s.getAge());    // Output: 20

        // Trying invalid age
        s.setAge(-5);  // Output: Age must be positive
    }
}
