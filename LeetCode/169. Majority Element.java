import java.util.Arrays;

class Solution {
    public int majorityElement(int[] nums) {
        int[] sortedNums = nums;
        Arrays.sort(sortedNums);
        int len = sortedNums.length - 1;
        int tempCount = 1, count = 0, me = sortedNums[0];
        for (int i = 0; i < len; i++) {
            if (sortedNums[i] == sortedNums[i + 1]) {
                tempCount++;
            } else {
                if (count < tempCount) {
                    count = tempCount;
                    me = sortedNums[i];
                }
                tempCount = 1;
            }
        }
        if (count < tempCount) {
            count = tempCount;
            me = sortedNums[len];
        }
        return me;
    }
}



// import java.util.HashMap;

// class Solution {
//     public int majorityElement(int[] nums) {
//         HashMap<Integer, Integer> hashMap = new HashMap<>();
//         for (int i = 0; i < nums.length; i++) {
//             if (hashMap.containsKey(nums[i])) {
//                 hashMap.replace(nums[i], hashMap.get(nums[i]) + 1);
//             } else {
//                 hashMap.put(nums[i], 1);
//             }
//         }

//         int max = 1, me = nums[0];
//         for (int i = 0; i < nums.length; i++) {
//             if (hashMap.get(nums[i]) > max) {
//                 me = nums[i];
//                 max = hashMap.get(nums[i]);
//             }
//         }

//         return me;
//     }
// }