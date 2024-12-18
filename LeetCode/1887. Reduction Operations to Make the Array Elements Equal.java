class Solution {
    public int reductionOperations(int[] nums) {
        int[] count = new int[50000];
        int operations = 0, lastCount = 0;
        for (int i = 0; i < nums.length; i++) {
            count[nums[i] - 1]++;
        }
        for (int i = 49999; i >= 0; i--) {
            if (count[i] > 0) {
                operations += count[i] + lastCount;
                lastCount = count[i] + lastCount;
            }
        }
        return operations - lastCount;
    }
}