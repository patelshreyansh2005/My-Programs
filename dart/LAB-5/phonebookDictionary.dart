import 'dart:io';

void main() {
  PhoneBook pb = new PhoneBook();
  int choice = 1;
  stdout.writeln("Enter 1 to print phonebook");
  stdout.writeln("Enter 2 to add phonebook");
  stdout.writeln("Enter 3 to get from phonebook");
  while (true) {
    stdout.write("Enter choice : ");
    choice = int.parse(stdin.readLineSync()!);
    if (choice == 3) {
      stdout.write("Enter name which you want to find : ");
      stdout.writeln(pb.get(stdin.readLineSync()!));
    } else if (choice == 2) {
      stdout.write("Enter name which you want to add : ");
      String name = stdin.readLineSync()!;
      stdout.write("Enter number which you want to add : ");
      int number = int.parse(stdin.readLineSync()!);
      pb.add(name, number);
    } else if (choice == 1) {
      pb.print();
    } else {
      if (choice == 0) {
        break;
      }
      stdout.writeln("Invalid choice");
    }
  }
}

class PhoneBook {
  Map<String, int> phonebook = {};
  bool add(String name, int number) {
    if (phonebook.putIfAbsent(name, () => number) == number) {
      stdout.writeln("${name} : ${number} Added");
      return true;
    } else {
      stdout.writeln("${name} : ${number} Already exist");
      return false;
    }
  }

  Map<String, int> get(String name) {
    Map<String, int> temp = {};
    phonebook.forEach((key, value) {
      if (key == name) {
        temp[name] = value;
      }
    });
    if (temp == null) {
      stdout.writeln("${name} not find");
    }
    return temp;
  }

  void print() {
    phonebook.forEach((key, value) {
      stdout.writeln("${key} : ${value}");
    });
  }
}
