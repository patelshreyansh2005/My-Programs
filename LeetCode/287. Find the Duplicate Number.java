class Solution {
    public int findDuplicate(int[] nums) {
        int[] count = new int[100001];
        for (int i = 0; i < nums.length; i++) {
            if (++count[nums[i]] > 1) {
                return nums[i];
            }
        }
        return 0;
    }
}