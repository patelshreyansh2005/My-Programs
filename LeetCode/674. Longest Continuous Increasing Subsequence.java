class Solution {
    public int findLengthOfLCIS(int[] nums) {
        int len = 1, preLen = 0;
        if (nums.length <= 1) {
            return nums.length;
        }
        for (int i = 1; i < nums.length; i++) {
            if (!(nums[i - 1] < nums[i])) {
                if (preLen < len) {
                    preLen = len;
                }
                len = 1;
            } else {
                len++;
            }
        }
        return preLen > len ? preLen : len;
    }
}
