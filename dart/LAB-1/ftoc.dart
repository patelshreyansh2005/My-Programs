import 'dart:io';

void main() {
  stdout.write("Enter Temp in Fahrenheit : ");
  stdout.writeln((double.parse(stdin.readLineSync()!) - 32) * 5 / 9);
}
