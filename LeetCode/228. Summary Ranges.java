import java.util.ArrayList;
import java.util.List;

class Solution {
    public List<String> summaryRanges(int[] nums) {
        List<String> summary = new ArrayList<>();
        int start;
        for (int i = 0; i < nums.length; i++) {
            start = nums[i];
            if (i != nums.length - 1) {
                while (i != nums.length - 1 && nums[i] + 1 == nums[i + 1]) {
                    i++;
                }
            }
            if (start != nums[i]) {
                summary.add(start + "->" + nums[i]);
            } else {
                summary.add(start + "");
            }
        }
        return summary;
    }
}