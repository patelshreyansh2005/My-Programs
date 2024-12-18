class Solution {
    public int findMaxConsecutiveOnes(int[] nums) {
        int consecutiveOnes = 0, prevConsecutiveOnes = 0;
        for (int i = 0; i < nums.length; i++) {
            if (nums[i] == 0) {
                prevConsecutiveOnes = prevConsecutiveOnes > consecutiveOnes ? prevConsecutiveOnes : consecutiveOnes;
                consecutiveOnes = 0;
            } else {
                consecutiveOnes++;
            }
        }
        return prevConsecutiveOnes > consecutiveOnes ? prevConsecutiveOnes : consecutiveOnes;
    }
}
