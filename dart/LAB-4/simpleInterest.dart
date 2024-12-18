import 'dart:io';

void main() {
  stdout.write("Enter p : ");
  int p = int.parse(stdin.readLineSync()!);
  stdout.write("Enter r : ");
  int r = int.parse(stdin.readLineSync()!);
  stdout.write("Enter n : ");
  int n = int.parse(stdin.readLineSync()!);
  stdout.writeln(simpleInterest(p, r, n));
}

double simpleInterest(int p, int r, int n) {
  return p * r * n / 100;
}
