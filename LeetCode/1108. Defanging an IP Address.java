class Solution {
    public String defangIPaddr(String address) {
        int len = address.length();
        String ans = "";
        for (int i = 0; i < len; i++) {
            if (address.charAt(i) == '.') {
                ans += "[.]";
            } else {
                ans += address.charAt(i);
            }
        }
        return ans;
    }
}