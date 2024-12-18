class Solution {
    public int findComplement(int num) {
        char[] binaryNum = Integer.toBinaryString(num).toCharArray();
        for (int i = 0; i < binaryNum.length; i++) {
            if (binaryNum[i] == '0') {
                binaryNum[i] = '1';
            } else {
                binaryNum[i] = '0';
            }
        }
        return Integer.parseInt(new String(binaryNum), 2);
    }
}
