import 'dart:io';

void main() {
  stdout.writeln(int.parse(stdin.readLineSync()!) < 0 ? "negative" : "positive");
}
