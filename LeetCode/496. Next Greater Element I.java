class Solution {
    public int[] nextGreaterElement(int[] nums1, int[] nums2) {
        int[] result = new int[nums1.length];
        int k = 0;
        for (int i = 0; i < result.length; i++) {
            for (int j = 0; j < nums2.length; j++) {
                if (nums2[j] == nums1[i]) {
                    for (k = j + 1; k < nums2.length; k++) {
                        if (nums2[k] > nums2[j]) {
                            result[i] = nums2[k];
                            break;
                        }
                    }
                    if (k == nums2.length) {
                        result[i] = -1;
                    }
                    break;
                }
            }
        }
        return result;
    }
}