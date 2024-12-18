import java.util.TreeSet;

class Solution {
    public boolean containsNearbyAlmostDuplicate(int[] nums, int indexDiff, int valueDiff) {
        TreeSet<Long> ts = new TreeSet<>();
        for (int i = 0; i < nums.length; i++) {
            Long floor = ts.floor((long) (nums[i]));
            if (floor != null) {
                if ((long) (nums[i]) - floor <= valueDiff) {
                    return true;
                }
            }
            Long ceil = ts.ceiling((long) (nums[i]));
            if (ceil != null) {
                if (ceil - (long) (nums[i]) <= valueDiff) {
                    return true;
                }
            }
            ts.add((long) (nums[i]));
            if (ts.size() > indexDiff) {
                ts.remove((long) (nums[i - indexDiff]));
            }
        }
        return false;
    }
}

// class Solution {
// public boolean containsNearbyAlmostDuplicate(int[] nums, int indexDiff, int
// valueDiff) {
// for (int i = 0; i < nums.length - 1; i++) {
// for (int j = 1; j <= indexDiff && i + j < nums.length; j++) {
// if (Math.abs(nums[i] - nums[i + j]) <= valueDiff) {
// return true;
// }
// }
// }
// return false;
// }
// }