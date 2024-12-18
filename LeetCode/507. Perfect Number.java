class Solution {
    public boolean checkPerfectNumber(int num) {
        int sum = 0;
        int j = num / 2 + 1;
        for (int i = 1; i < j; i++) {
            if (num % i == 0) {
                sum += i;
            }
        }
        return sum == num;
    }
}