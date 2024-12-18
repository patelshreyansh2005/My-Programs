import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

class Solution {
    public int thirdMax(int[] nums) {
        Set<Integer> s = new HashSet<>();
        for (int i = 0; i < nums.length; i++) {
            s.add(nums[i]);
        }
        Integer[] newArray = new Integer[s.size()];
        s.toArray(newArray);
        Arrays.sort(newArray);
        if (newArray.length == 1) {
            return newArray[0];
        }
        if (newArray.length == 2) {
            return Math.max(newArray[0], newArray[1]);
        }
        return newArray[newArray.length - 3];
    }
}