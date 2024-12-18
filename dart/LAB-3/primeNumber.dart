import 'dart:io';

void main() {
  stdout.write("Enter number : ");
  int n = int.parse(stdin.readLineSync()!);
  bool isPrime = true;
  for (int i = n ~/ 2 + 1; i > 1; i--) {
    if (n % i == 0) {
      isPrime = false;
      break;
    }
  }
  stdout.writeln(isPrime ? "${n} is prime" : "${n} is not prime");
}
