class Solution {
    public int sumOfTheDigitsOfHarshadNumber(int x) {
        if (x == 100) {
            return 1;
        }
        if (x % (x % 10 + ((x/10) % 10)) == 0) {
            return x % 10 + ((x/10) % 10);
        }
        return -1;
    }
}