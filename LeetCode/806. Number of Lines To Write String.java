class Solution {
    public int[] numberOfLines(int[] widths, String s) {
        int len = s.length();
        int lines = 0;
        int width = 0;
        for (int i = 0; i < len; i++) {
            if (widths[s.charAt(i) - 97] + width > 100) {
                lines++;
                width = 0;
            }
            width += widths[s.charAt(i) - 97];
        }
        return new int[] { lines + 1, width };
    }
}