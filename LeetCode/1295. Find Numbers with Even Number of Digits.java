class Solution {
    public int findNumbers(int[] nums) {
        int count = 0;
        String num = "";
        for (int i = 0; i < nums.length; i++) {
            num = nums[i] + "";
            if (num.length() % 2 == 0) {
                count++;
            }
        }
        return count;
    }
}