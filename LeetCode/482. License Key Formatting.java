class Solution {
    public String licenseKeyFormatting(String s, int k) {
        char[] old = s.toCharArray();
        StringBuilder sb = new StringBuilder();
        for (char c : old) {
            if (c != '-') {
                sb.append(c);
            }
        }
        sb.reverse();
        StringBuilder newStr = new StringBuilder();
        int len = sb.length();
        if (len == 0) {
            return "";
        }
        for (int i = 0; i < len; i++) {
            if (i % k == 0) {
                newStr.append('-');
            }
            newStr.append(sb.charAt(i));
        }
        return newStr.deleteCharAt(0).reverse().toString().toUpperCase();
    }
}