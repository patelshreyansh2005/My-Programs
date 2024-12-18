class Solution {
    public int titleToNumber(String columnTitle) {
        String tiale = new StringBuilder(columnTitle).reverse().toString();
        int len = tiale.length();
        int ans = 0;
        int multiplier = 1;
        for (int i = 0; i < len; i++) {
            ans += ((int)tiale.charAt(i) - 64) * multiplier;
            multiplier *= 26;
        }
        return ans;
    }
}
