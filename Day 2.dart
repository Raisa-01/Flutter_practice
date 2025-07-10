
import 'dart:math';
void main() {
  // Runtime Type
  var name = "Afia";
  print('Runtime type of name: ${name.runtimeType}'); // Output: String

  // Current Time
  DateTime now = DateTime.now();
  print('Current time: $now');

  //  Math Operations
  double a = 8;
  double b = 3;

  print('Addition: ${a + b}');
  print('Subtraction: ${a - b}');
  print('Multiplication: ${a * b}');
  print('Division: ${a / b}');
  print('Modulus: ${a % b}');
  print('Power: ${pow(a, b)}');

  //Increment & Decrement
  int count = 5;

  count++; // Increment
  print('After increment: $count'); // Output: 6

  count--; // Decrement
  print('After decrement: $count'); // Output: 5
}