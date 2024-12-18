class Solution {
    public int dominantIndex(int[] nums) {
        int max = 0, secMax = -1;
        for (int i = 1; i < nums.length; i++) {
            if (nums[i] > nums[max]) {
                secMax = max;
                max = i;
            } else if (secMax == -1 || nums[i] > nums[secMax]) {
                secMax = i;
            }
        }

        return nums[max] >= 2 * nums[secMax] ? max : -1;
    }
}
