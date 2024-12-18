import 'dart:io';

void main() {
  stdout.write("Enter number : ");
  stdout.writeln("${factorial(int.parse(stdin.readLineSync()!))}");
}

int factorial(int n) {
  if (n <= 0) {
    return 1;
  }
  return n * factorial(n - 1);
}
