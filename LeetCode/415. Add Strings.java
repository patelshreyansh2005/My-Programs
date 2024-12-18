class Solution {

    public String addStrings(String num1, String num2) {
        StringBuilder n1 = new StringBuilder(num1).reverse();
        StringBuilder n2 = new StringBuilder(num2).reverse();
        StringBuilder ans = new StringBuilder();
        int carry = 0, i = 0;
        int n1Len = n1.length();
        int n2Len = n2.length();
        while (true) {
            if (i > n1Len && i > n2Len) {
                break;
            }
            int digit1 = i < n1Len ? Character.getNumericValue(n1.charAt(i)) : 0;
            int digit2 = i < n2Len ? Character.getNumericValue(n2.charAt(i)) : 0;
            int sum = digit1 + digit2 + carry;
            carry = sum / 10;
            ans.append(sum % 10);
            i++;
        }
        while (ans.length() > 0 && ans.charAt(ans.length() - 1) == '0') {
            ans.deleteCharAt(ans.length() - 1);
        }
        ans.reverse();
        return ans.length() == 0 ? "0" : ans.toString();
    }
}