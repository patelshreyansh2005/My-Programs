class Solution {
    public boolean isSubsequence(String s, String t) {
        char[] sarray = s.toCharArray();
        if (sarray.length == 0) {
            return true;
        }
        int index = 0;
        for (char ch : t.toCharArray()) {
            if (ch == sarray[index]) {
                index++;
                if (index == sarray.length) {
                    return true;
                }
            }
        }
        if (index == sarray.length) {
            return true;
        }
        return false;
    }
}