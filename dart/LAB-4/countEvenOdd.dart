import 'dart:io';
import 'dart:math';

void main() {
  List<int> array = [];
  int input = 1;
  stdout.writeln("Enter 0 to exit");
  while (true) {
    stdout.write("Enter an Element : ");
    input = int.parse(stdin.readLineSync()!);
    if (input == 0) {
      break;
    } else {
      array.add(input);
    }
  }
  int countOfEven = 0, countOfOdd = 0;
  for (var element in array) {
    if (element % 2 == 0) {
      countOfEven++;
    } else {
      countOfOdd++;
    }
  }
  stdout.writeln("Number of even numbers in array is ${countOfEven}");
  stdout.writeln("Number of odd numbers in array is ${countOfOdd}");
}
