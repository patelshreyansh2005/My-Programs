class Solution {
    public String longestPalindrome(String s) {
        int len = s.length();
        String longestPalindrome = s.charAt(0) + "";
        for (int i = 0; i < len; i++) {
            for (int j = i + 1; j <= len; j++) {
                String subString = s.substring(i, j);
                if (isPalindrome(subString) && j - i > longestPalindrome.length()) {
                    longestPalindrome = subString;
                }
            }
        }
        return longestPalindrome;
    }

    private boolean isPalindrome(String s) {
        int len = s.length() - 1;
        int arrLen = (len + 1) / 2;
        for (int i = 0; i < arrLen; i++) {
            if (s.charAt(i) != s.charAt(len - i)) {
                return false;
            }
        }
        return true;
    }
}