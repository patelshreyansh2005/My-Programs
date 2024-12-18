class Solution {
    public void moveZeroes(int[] nums) {
        // [0,15,0,31,12]
        // [15,31,12,0,0]
        int j = 0, i = 0;
        while (true) {
            for (j = 0; j < nums.length; j++) {
                if (nums[j] == 0) {
                    break;
                }
            }
            for (i = j; i < nums.length; i++) {
                if (nums[i] != 0) {
                    break;
                }
            }
            if (i == nums.length) {
                break;
            }
            nums[j] = nums[i];
            nums[i] = 0;
        }
    }
}