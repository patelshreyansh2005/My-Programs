import 'dart:io';

void main() {
  stdout.write("Enter lenth in centimeters : ");
  stdout.writeln(double.parse(stdin.readLineSync()!) / 2.54);
}
