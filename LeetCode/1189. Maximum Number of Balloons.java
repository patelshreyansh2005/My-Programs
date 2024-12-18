class Solution {
    public int maxNumberOfBalloons(String text) {
        int[] freq = new int[26];
        for (int i : text.toCharArray()) {
            freq[i - 'a']++;
        }
        int count = 0;
        while (freq[0] > 0 && freq[1] > 0 && freq[11] > 1 && freq[13] > 0 && freq[14] > 1) {
            count++;
            freq[0]--;
            freq[1]--;
            freq[11] -= 2;
            freq[13]--;
            freq[14] -= 2;
        }
        return count;
    }
}