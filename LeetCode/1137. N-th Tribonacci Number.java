class Solution {
    public int tribonacci(int n) {
        if (n == 0) {
            return 0;
        }
        if (n == 1 || n == 2) {
            return 1;
        }
        return helper(0, 1, 1, n);
    }

    private int helper(int n1, int n2, int n3, int n) {
        return n > 3 ? helper(n2, n3, n1 + n2 + n3, n - 1) : n1 + n2 + n3;
    }
}