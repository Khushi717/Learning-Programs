class Calculator {
    int multiply(int a, int b) {
        return a * b;
    }

    double multiply(double a, double b) {
        return a * b;
    }

    int multiply(int a, int b, int c) {
        return a * b * c;
    }
}

 class Main {
    public static void main(String[] args) {
        Calculator calc = new Calculator();
        System.out.println(calc.multiply(2, 3));       // 6
        System.out.println(calc.multiply(2.5, 3.0));   // 7.5
        System.out.println(calc.multiply(2, 3, 4));    // 24
    }
}