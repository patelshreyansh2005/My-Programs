class Solution {
    public int[] sortArrayByParityII(int[] nums) {
        for (int i = 0; i < nums.length; i++) {
            if (i % 2 == 0) {
                if (nums[i] % 2 != 0) {
                    for (int j = i; j < nums.length; j++) {
                        if (nums[j] % 2 == 0) {
                            int temp = nums[j];
                            nums[j] = nums[i];
                            nums[i] = temp;
                            break;
                        }
                    }
                }
            } else {
                if (nums[i] % 2 == 0) {
                    for (int j = i; j < nums.length; j++) {
                        if (nums[j] % 2 != 0) {
                            int temp = nums[j];
                            nums[j] = nums[i];
                            nums[i] = temp;
                            break;
                        }
                    }
                }
            }
        }
        return nums;
    }
}