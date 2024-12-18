import java.math.BigInteger;

class Solution {
    public String addBinary(String a, String b) {
        BigInteger aa = new BigInteger(a);
        BigInteger bb = new BigInteger(b);
        BigInteger ten = new BigInteger("10");
        BigInteger zero = new BigInteger("0");
        
        int daa = 0, dbb = 0, carry = 0;
        String ans = "";
        while(true) {
            daa = aa.mod(ten).intValue();
            dbb = bb.mod(ten).intValue();
            aa = aa.divide(ten);
            bb = bb.divide(ten);
            daa = daa + dbb + carry;
            if (daa == 0) {
                ans += "0";
                carry = 0;
            } else if (daa == 1) {
                ans += "1";
                carry = 0;
            } else if (daa == 2) {
                ans += "0";
                carry = 1;
            } else if (daa == 3) {
                ans += "1";
                carry = 1;
            } else {
                return "";
            }
            if (aa.equals(zero) && bb.equals(zero)) {
                break;
            }
        };
        if (carry == 1) {
            ans += carry;
        }
        return new StringBuilder(ans).reverse().toString();
    }
}