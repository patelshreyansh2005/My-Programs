class Solution {
    public String reverseWords(String s) {
        String[] str = s.split(" ");
        for (int i = 0; i < str.length; i++) {
            StringBuilder sb = new StringBuilder(str[i]);
            str[i] = sb.reverse().toString();
        }
        return String.join(" ", str);
    }
}