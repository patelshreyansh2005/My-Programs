import 'dart:io';

void main() {
  stdout.write("Enter number : ");
  fibonacci(int.parse(stdin.readLineSync()!));
}

void fibonacci(int n) {
  stdout.write("0, 1");
  fibonacciHelper(0, 1, 0, n);
}

void fibonacciHelper(int n1, int n2, int i, int n) {
  if (i > n) {
    return;
  }
  stdout.write(", ${n1 + n2}");
  fibonacciHelper(n2, n1 + n2, i + 1, n);
}
