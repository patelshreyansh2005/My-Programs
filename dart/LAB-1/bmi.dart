import 'dart:io';

void main() {
  stdout.write("Enter your weight in pound : ");
  double weight = double.parse(stdin.readLineSync()!);
  stdout.write("Enter your height in inche : ");
  double height = double.parse(stdin.readLineSync()!);
  weight = weight * 0.453592;
  height = height * 0.0254;
  stdout.writeln(weight / height / height);
}
