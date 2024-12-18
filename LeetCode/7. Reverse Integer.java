class Solution {
    public int reverse(int x) {
        int ans;
        try {
            ans = Integer.parseInt(new StringBuilder(Integer.toString(Math.abs(x))).reverse().toString());
        } catch (NumberFormatException e) {
            return 0;
        }
        return x < 0 ? -ans : ans;
    }
}