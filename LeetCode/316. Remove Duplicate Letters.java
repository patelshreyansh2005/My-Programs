class Solution {
    public String removeDuplicateLetters(String s) {
        // Not Completed
        String ans = "";
        int slen = s.length();
        for (int i = 0; i < slen; i++) {
            if (!ans.contains(s.charAt(i) + "")) {
                ans += s.charAt(i);
            }
        }
        char[] array = ans.toCharArray();
        java.util.Arrays.sort(array);
        return new String(array);
    }
}