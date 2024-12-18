class Solution {
    public int firstUniqChar(String s) {
        int[] count = new int[26];
        int len = s.length();
        for (int i = 0; i < len; i++) {
            count[s.charAt(i) - 97]++;
        }
        for (int i = 0; i < len; i++) {
            if (count[s.charAt(i) - 97] == 1) {
                return i;
            }
        }
        return -1;
    }
}