class Solution {
    public int[] sortArrayByParity(int[] nums) {
        int[] sorted = new int[nums.length];
        int foi = 0, j = 0;
        for (int i = 0; i < nums.length; i++) {
            if (nums[i] % 2 == 0) {
                foi++;
            }
        }
        for (int i = 0; i < sorted.length; i++) {
            if (nums[i] % 2 == 0) {
                sorted[j++] = nums[i];
            } else {
                sorted[foi++] = nums[i];
            }
        }
        return sorted;
    }
}