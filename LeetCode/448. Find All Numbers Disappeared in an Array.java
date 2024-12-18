import java.util.ArrayList;
import java.util.List;

class Solution {
    public List<Integer> findDisappearedNumbers(int[] nums) {
        int[] count = new int[nums.length];
        List<Integer> al = new ArrayList<>();
        for (int i = 0; i < nums.length; i++) {
            count[nums[i] - 1] = 1;
        }
        for (int i = 0; i < count.length; i++) {
            if (count[i] == 0) {
                al.add(i + 1);
            }
        }
        return al;
    }
}