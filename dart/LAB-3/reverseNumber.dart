import 'dart:io';

void main() {
  stdout.write("Enter number : ");
  int n = int.parse(stdin.readLineSync()!);
  int newN = 0;
  while (n != 0) {
    newN = newN * 10 + n % 10;
    n = (n ~/ 10);
  }
  stdout.write(newN);
}
