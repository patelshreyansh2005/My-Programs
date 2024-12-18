class Solution {
    public char findTheDifference(String s, String t) {
        int[] chars = new int[26];
        int len = s.length();
        for (int i = 0; i < len; i++) {
            chars[t.charAt(i) - 97]++;
            chars[s.charAt(i) - 97]--;
        }
        chars[t.charAt(len) - 97]++;
        for (int i = 0; i < 26; i++) {
            if (chars[i] > 0) {
                return (char) (i + 97);
            }
        }
        return ' ';
    }
}