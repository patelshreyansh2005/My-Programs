class Solution {
    public String convertToTitle(int columnNumber) {
        int colnum = columnNumber;
        StringBuilder ans = new StringBuilder();
        while (colnum > 0) {
            int remainder = (colnum - 1) % 26;
            ans.append((char) (remainder + 'A'));
            colnum = (colnum - 1) / 26;
        }
        return ans.reverse().toString();
    }
}
