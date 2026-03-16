import 'dart:io';
double add(double a, double b) => a + b;
double subtract(double a, double b) => a - b;
double multiply(double a, double b) => a * b;
double divide(double a, double b) => b != 0 ? a / b : double.nan;

void main() {
    print("Hello User");
  print("=== Simple Calculator ===");

  stdout.write("Enter first number: ");
  double num1 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter operator (+, -, *, /): ");
  String op = stdin.readLineSync()!;

  stdout.write("Enter second number: ");
  double num2 = double.parse(stdin.readLineSync()!);

  double result;

  switch (op) {
    case '+':
      result = add(num1, num2);
      break;

    case '-':
      result = subtract(num1, num2);
      break;

    case '*':
      result = multiply(num1, num2);
      break;

    case '/':
      result = divide(num1, num2);
      break;

    default:
      print("Invalid operator ❌");
      return;
  }

  print("Result: $result");
}





array 1 scores has n elements we need to input the array
array 2 cutoff has c elements we need to input the array 
inc sort the scores array
cout the scores with the freq of each one of the scores
cout the no of scores greater then each cutoff by iterating in the array of cutoff 
