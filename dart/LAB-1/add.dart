import 'dart:io';

void main() {
  stdout.write("Enter a number : ");
  int n1 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter a number : ");
  int n2 = int.parse(stdin.readLineSync()!);
  stdout.writeln("${n1 + n2}");
}
