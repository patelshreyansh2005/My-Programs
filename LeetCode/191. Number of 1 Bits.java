class Solution {
    public int hammingWeight(int n) {
        int bits = 0;
        if (n == Integer.MIN_VALUE) {
            return 1;
        }
        int num = n;
        while (num != 0) {
            if ((num & 1) == 1) {
                bits++;
            }
            num >>>= 1;
        }
        return bits;
    }
}