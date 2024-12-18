import 'dart:io';

void main() {
  List<int> nums = [];
  for (int i = 0; i < 5; i++) {
    stdout.write("Enter a number : ");
    nums.add(int.parse(stdin.readLineSync()!));
  }
  bool isSorted = false;
  while (!isSorted) {
    isSorted = true;
    for (int i = 1; i < nums.length; i++) {
      if (nums[i - 1] > nums[i]) {
        int temp = nums[i - 1];
        nums[i - 1] = nums[i];
        nums[i] = temp;
        isSorted = false;
      }
    }
  }
  stdout.writeln(nums);
}
