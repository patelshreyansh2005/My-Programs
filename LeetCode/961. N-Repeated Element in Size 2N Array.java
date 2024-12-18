class Solution {
    public int repeatedNTimes(int[] nums) {
        boolean[] arr = new boolean[10000];
        for (int i = 0; i < nums.length; i++) {
            if (arr[nums[i]]) {
                return nums[i];
            }
            arr[nums[i]] = true;
        }
        return 0;
    }
}