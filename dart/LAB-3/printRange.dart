import 'dart:io';

void main() {
  stdout.write("Enter starting point : ");
  int start = int.parse(stdin.readLineSync()!);
  stdout.write("Enter ending point : ");
  int end = int.parse(stdin.readLineSync()!);
  while (start <= end) {
    if (start % 2 == 0 && start % 3 != 0) {
      stdout.write("${start}, ");
    }
    start++;
  }
}
