class Solution {
    public int maxFrequencyElements(int[] nums) {
        int[] count = new int[101];
        int max = 0;
        int sum = 0;
        for (int i : nums) {
            count[i]++;
            if (count[i] > max) {
                max = count[i];
            }
        }
        for (int i : count) {
            if (i == max) {
                sum += max;
            }
        }
        return sum;
    }
}