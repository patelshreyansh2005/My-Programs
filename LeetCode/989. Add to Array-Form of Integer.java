import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

class Solution {
    public List<Integer> addToArrayForm(int[] num, int k) {
        int carry = 0, temp = 0;
        List<Integer> result = new ArrayList<>();

        for (int i = num.length - 1; i >= 0 || k > 0; i--) {
            int x = i >= 0 ? num[i] : 0;
            temp = k % 10 + carry + x;
            result.add(temp % 10);
            carry = temp / 10;
            k /= 10;
        }

        if (carry > 0) {
            result.add(carry);
        }

        Collections.reverse(result);
        if (result.isEmpty()) {
            result.add(0);
        }
        return result;
    }
}
