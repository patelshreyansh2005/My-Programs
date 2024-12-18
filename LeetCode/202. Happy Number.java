import java.util.ArrayList;

class Solution {
    public boolean isHappy(int n) {
        String num = n + "";
        int len = 0;
        int temp = 0;
        ArrayList<Integer> nums = new ArrayList<>();
        while (true) {
            len = num.length();
            temp = 0;
            for (int i = 0; i < len; i++) {
                temp += Math.pow(Integer.parseInt(num.charAt(i) + ""), 2);
            }
            if (temp == 1) {
                return true;
            }
            if (nums.contains(temp)) {
                return false;
            }
            num = temp + "";
            nums.add(temp);
        }
    }
}