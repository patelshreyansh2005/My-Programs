class Solution {
    public boolean isLongPressedName(String name, String typed) {
        int j = 0, i;
        int len1 = name.length();
        int len2 = typed.length();

        for (i = 0; i < len2; i++) {
            if (j < len1 && name.charAt(j) == typed.charAt(i)) {
                j++;
            } else if (i == 0 || typed.charAt(i) != typed.charAt(i - 1)) {
                return false;
            }
        }

        return j == len1;
    }
}
