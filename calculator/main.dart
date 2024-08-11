import 'dart:io';

double calc(String op, double num1, double num2) {
  double result = 0.0;
  if (op == "a") {
    result = num1 + num2;
  } else if (op == "s") {
    result = num1 - num2;
  } else if (op == "m") {
    result = num1 * num2;
  } else if (op == "d") {
    result = num1 / num2;
  }
  return result;
}

void main() {
  double? n1 = 0.0, n2 = 0.0, result = 0.0;
  String user_input = '';
  print("Enter first number: ");
  user_input = stdin.readLineSync().toString();
  n1 = double.tryParse(user_input);
  print("Enter second number: ");
  user_input = stdin.readLineSync().toString();
  n2 = double.tryParse(user_input);
  print("Enter operation: ");
  user_input = stdin.readLineSync().toString();
  result = calc(user_input, n1 as double, n2 as double);
  print("The result: $result");
}