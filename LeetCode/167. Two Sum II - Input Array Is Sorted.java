class Solution {
    public int[] twoSum(int[] numbers, int target) {
        for (int i = 0; i < numbers.length - 1; i++) {
            int temp = search(numbers, target - numbers[i], i + 1);
            if (temp != -1) {
                return new int[] { i + 1, temp + 1 };
            }
        }
        return new int[] { -1, -1 };
    }

    public int search(int[] nums, int target, int start) {
        int l = start;
        int h = nums.length - 1;
        int m;
        while (l <= h) {
            m = (l + h) / 2;
            if (nums[m] == target) {
                return m;
            } else if (nums[m] > target) {
                h = m - 1;
            } else {
                l = m + 1;
            }
        }
        return -1;
    }
}