class Solution {
    public int[] findMissingAndRepeatedValues(int[][] grid) {
        int[] count = new int[(grid.length * grid.length) + 1];
        count[0] = -1;
        int[] ans = new int[2];
        for (int[] i : grid) {
            for (int j : i) {
                count[j]++;
            }
        }
        for (int i = 0; i < count.length; i++) {
            if (count[i] == 0) {
                ans[1] = i;
                if (ans[0] != 0) {
                    return ans;
                }
            }
            if (count[i] > 1) {
                ans[0] = i;
                if (ans[1] != 0) {
                    return ans;
                }
            }
        }
        return ans;
    }
}