class Solution {
    public int findMaxK(int[] nums) {
        int[] countP = new int[1001];
        int[] countN = new int[1001];
        int ans = 0;
        for (int i : nums) {
            if (i < 0) {
                countN[Math.abs(i)]++;
            } else {
                countP[i]++;
            }
        }
        for (int i = 1; i < 1001; i++) {
            if (countN[i] > 0 && countP[i] > 0) {
                ans = i;
            }
        }
        return ans == 0 ? -1 : ans;
    }
}