class Solution {
    public void reverseString(char[] s) {
        int len = s.length / 2;
        char temp;
        for (int i = 0; i < len; i++) {
            temp = s[i];
            s[i] = s[s.length - i - 1];
            s[s.length - i - 1] = temp;
        }
    }
}