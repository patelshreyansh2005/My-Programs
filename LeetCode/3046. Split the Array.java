class Solution {
    public boolean isPossibleToSplit(int[] nums) {
        int[] count = new int[101];
        for (int i : nums) {
            if (count[i] > 1) {
                return false;
            }
            count[i]++;
        }
        return true;
    }
}