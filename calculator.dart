import 'dart:io';

class Calculator {
  
  Calculator._internal();
  static final Calculator _instance = Calculator._internal();

  
  factory Calculator() {
    return _instance;
  }

  
  final add = (double a, double b) => a + b;
  final subtract = (double a, double b) => a - b;
  final multiply = (double a, double b) => a * b;
  final divide = (double a, double b) =>
      b == 0 ? double.nan : a / b; 
}

void runCalculator() {
  final calculator = Calculator();

  print('-' * 30);
  print('         Calculator ');
  print('-' * 30);

  stdout.write("\nEnter first number: ");
  double? N1 = double.tryParse(stdin.readLineSync() ?? '');
  if (N1 == null) {
    print("Invalid input for first number.");
    return;
  }

  stdout.write("Enter second number: ");
  double? N2 = double.tryParse(stdin.readLineSync() ?? '');
  if (N2 == null) {
    print("Invalid input for second number.");
    return;
  }

  stdout.write("Enter operator (+, -, *, /): ");
  String? op = stdin.readLineSync();

  switch (op) {
    case '+':
      print("Result: ${calculator.add(N1, N2)}");
      break;
    case '-':
      print("Result: ${calculator.subtract(N1, N2)}");
      break;
    case '*':
      print("Result: ${calculator.multiply(N1, N2)}");
      break;
    case '/':
      if (N2 == 0) {
        print("DIVISION BY ZERO IS NOT DEFINED");
      } else {
        print("Result: ${calculator.divide(N1, N2)}");
      }
      break;
    default:print("Invalid operator!");
  }
}

