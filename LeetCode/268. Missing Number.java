class Solution {
    public int missingNumber(int[] nums) {
        int sum = 0;
        boolean isContainZero = false;
        for (int i = 0; i < nums.length; i++) {
            if (nums[i] == 0) {
                isContainZero = true;
            }
        }
        if (!isContainZero) {
            return 0;
        }
        for (int i = 0; i < nums.length; i++) {
            sum += nums[i];
        }
        return (nums.length * (nums.length + 1) / 2) - sum;
    }
}