class Solution {
    public int divide(int dividend, int divisor) {
        if (dividend == 0) {
            return 0;
        }
        if (dividend == Integer.MIN_VALUE && divisor == -1) {
            return Integer.MAX_VALUE;
        }
        boolean willQuotientNegative = (dividend < 0) ^ (divisor < 0);
        long ldividend = Math.abs((long) dividend);
        long ldivisor = Math.abs((long) divisor);
        int quotient = 0;
        while (ldividend >= ldivisor) {
            ldividend -= ldivisor;
            quotient++;
        }
        return willQuotientNegative ? -quotient : quotient;
    }
}
