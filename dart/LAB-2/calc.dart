import 'dart:io';

void main() {
  stdout.write("Enter number 1 : ");
  double n1 = double.parse(stdin.readLineSync()!);
  stdout.write("Enter op : ");
  String op = stdin.readLineSync()!;
  stdout.write("Enter number 2 : ");
  double n2 = double.parse(stdin.readLineSync()!);
  switch (op) {
    case "+":
      stdout.writeln(n1 + n2);
      break;
    case "-":
      stdout.writeln(n1 - n2);
      break;
    case "*":
      stdout.writeln(n1 * n2);
      break;
    case "/":
      stdout.writeln(n1 / n2);
      break;
    default:
      stdout.writeln("Invalid op");
      break;
  }
}

// if (op == "+") {
//     stdout.writeln(n1 + n2);
//   } else if (op == "-") {
//     stdout.writeln(n1 - n2);
//   } else if (op == "*") {
//     stdout.writeln(n1 * n2);
//   } else if (op == "/") {
//     stdout.writeln(n1 / n2);
//   } else {
//     stdout.writeln("Invalid op");
//   }