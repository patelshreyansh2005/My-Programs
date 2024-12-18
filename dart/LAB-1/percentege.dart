import 'dart:io';

void main() {
  stdout.write("Enter sub : ");
  int s1 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter sub : ");
  int s2 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter sub : ");
  int s3 = int.parse(stdin.readLineSync()!);
  stdout.writeln((s1 + s2 + s3) / 3);
}
