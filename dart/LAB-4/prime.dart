import 'dart:io';

void main() {
  stdout.write("Enter number : ");
  stdout.writeln(check(int.parse(stdin.readLineSync()!)));
}

bool check(int n) {
  return isPrime(2, n);
}

bool isPrime(int i, int n) {
  if (i > n / 2) {
    return n % i != 0;
  }
  return n % i == 0 ? false : isPrime(i + 1, n);
}
