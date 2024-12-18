class Solution {
    public boolean isPowerOfTwo(int n) {
        int i = 0;
        double pow = Math.pow(2, i);
        while (pow <= n) {
            if (pow == n) {
                return true;
            }
            i++;
            pow = Math.pow(2, i);
        }
        return false;
    }
}