class Solution {
    public String toHex(int num) {
        if (num == 0) {
            return "0";
        }
        char[] hexDigits = {'0','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f'};
        long unsignedNum = num & 0xFFFFFFFFL;
        StringBuilder result = new StringBuilder();
        while (unsignedNum > 0) {
            int digit = (int) (unsignedNum % 16);
            result.insert(0, hexDigits[digit]);
            unsignedNum = unsignedNum >>> 4;
        }
        return result.toString();
    }
}
