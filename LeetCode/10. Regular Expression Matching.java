class Solution {
    public boolean isMatch(String s, String p) {
        // aaab a*a
        char[] sArray = s.toCharArray();
        char[] pArray = p.toCharArray();
        if ((pArray.length == 1 && sArray.length != 1) || (sArray[0] != '.' && sArray[0] != pArray[0])) {
            return false;
        }
    }
}