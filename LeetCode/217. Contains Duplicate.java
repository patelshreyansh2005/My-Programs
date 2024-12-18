class Solution {
    public boolean containsDuplicate(int[] nums) {
        int len = nums.length - 1;
        for (int i = 0; i < len; i++) {
            for (int j = 0; j < nums.length; j++) {
                if (nums[i] == nums[j]) {
                    return true;
                }
            }
        }
        return false;
    }
}
