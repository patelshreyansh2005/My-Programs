import 'dart:io';

void main() {
  stdout.write("Enter number 1 : ");
  int n1 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter number 2 : ");
  int n2 = int.parse(stdin.readLineSync()!);
  stdout.writeln("${max(n1, n2)} is bigger");
}

int max(int n1, int n2) {
  return n1 > n2 ? n1 : n2;
}
