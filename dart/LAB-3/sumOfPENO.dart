import 'dart:io';

void main() {
  int input = 1, sumOfPE = 0, sumOfNO = 0;
  stdout.writeln("Enter 0 to exit");
  while (input != 0) {
    stdout.write("Enter number : ");
    input = int.parse(stdin.readLineSync()!);
    if (input > 0 && input % 2 == 0) {
      sumOfPE += input;
    } else if (input < 0 && input % 2 != 0) {
      sumOfNO += input;
    }
  }
  stdout.writeln("sum of positive and even numbers is ${sumOfPE}\nsum of negitive and odd numbers is ${sumOfNO}");
}
