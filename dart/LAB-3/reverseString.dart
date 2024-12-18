import 'dart:io';

void main() {
  stdout.write("Enter any string : ");
  String s = stdin.readLineSync()!;
  String reverse = "";
  for (int i = s.length - 1; i >= 0; i--) {
    reverse += s[i];
  }
  stdout.write(reverse);
}
