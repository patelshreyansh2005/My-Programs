class Solution {
    public int findKthLargest(int[] nums, int k) {
        int[] count = new int[20001];
        for (int i : nums) {
            count[i + 10000]++;
        }
        for (int i = 20000; i >= 0; i--) {
            if (count[i] > 0) {
                count[i]--;
                k--;
                if (k == 0) {
                    return i - 10000;
                }
                i++;
            }
        }
        return 0;
    }
}