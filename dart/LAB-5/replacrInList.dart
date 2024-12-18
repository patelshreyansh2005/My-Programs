import 'dart:io';

void main() {
  List<String> names = [
    "Delhi",
    "Mumbai",
    "Bangalore",
    "Hyderabad",
    "Ahmedabad"
  ];
  stdout.write("Enter what you want to replace : ");
  String elementToBeReplaced = stdin.readLineSync()!;
  stdout.write("Enter replacer : ");
  String replacer = stdin.readLineSync()!;
  for (int i = 0; i < names.length; i++) {
    if (names[i] == elementToBeReplaced) {
      names[i] = replacer;
    }
  }
  stdout.writeln(names);
}
