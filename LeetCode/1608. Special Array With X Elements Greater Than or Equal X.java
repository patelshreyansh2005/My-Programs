class Solution {
    public int specialArray(int[] nums) {
        int[] count = new int[1001];
        for (int i : nums) {
            for (int j = 0; j <= i; j++) {
                count[j]++;
            }
        }
        for (int i = count.length - 1; i > 0; i--) {
            if (i == count[i]) {
                return i;
            }
        }
        return -1;
    }
}