class Solution {
    public String toLowerCase(String s) {
        StringBuilder sb = new StringBuilder();
        int len = s.length();
        char ch;
        for (int i = 0; i < len; i++) {
            ch = s.charAt(i);
            if (ch < 91 && ch > 64) {
                sb.append((char) (ch + 32));
            } else {
                sb.append(ch);
            }
        }
        return sb.toString();
    }
}