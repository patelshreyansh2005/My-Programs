class Solution {
    public boolean isPalindrome(String s) {
        StringBuilder sb = new StringBuilder(s);
        int len = sb.length();
        StringBuilder newsb = new StringBuilder();
        for (int i = 0; i < len; i++) {
            if (Character.isLetterOrDigit(sb.charAt(i)) || Character.isDigit(sb.charAt(i))) {
                newsb.append(Character.toLowerCase(sb.charAt(i)));
            }
        }
        String sbStr = newsb.toString().toLowerCase();
        String reversedStr = newsb.reverse().toString().toLowerCase();
        return sbStr.equals(reversedStr);
    }
}
