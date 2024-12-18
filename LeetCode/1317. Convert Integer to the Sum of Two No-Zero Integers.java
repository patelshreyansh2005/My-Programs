class Solution {
    public int[] getNoZeroIntegers(int n) {
        int num = n - 1;
        String str1 = (n - 1) + "";
        String str2 = (n - num) + "";
        while (str1.contains("0") || str2.contains("0")) {
            str1 = (--num) + "";
            str2 = (n - num) + "";
        }
        return new int[] { num, n - num };
    }
}