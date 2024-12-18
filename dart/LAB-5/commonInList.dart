import 'dart:io';

void main() {
  List<int> list1 = [];
  for (int i = 0; i < 5; i++) {
    stdout.write("Enter a number for List 1 : ");
    list1.add(int.parse(stdin.readLineSync()!));
  }
  List<int> list2 = [];
  for (int i = 0; i < 5; i++) {
    stdout.write("Enter a number for List 2 : ");
    list2.add(int.parse(stdin.readLineSync()!));
  }
  List<int> ans = [];
  list1.forEach((element1) {
    list2.forEach((element2) {
      if (element1 == element2) {
        ans.add(element1);
      }
    });
  });
  stdout.writeln(ans);
}
