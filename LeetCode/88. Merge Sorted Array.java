class Solution {
    public void merge(int[] nums1, int m, int[] nums2, int n) {
        int j = 0;
        for (int i = m; i < nums1.length; i++) {
            nums1[i] = nums2[j];
            j++;
        }
        boolean isSorted = false;
        while (true) {
            if (!isSorted) {
                isSorted = true;
                for (int i = 1; i < nums1.length; i++) {
                    if (nums1[i - 1] > nums1[i]) {
                        int temp = nums1[i - 1];
                        nums1[i - 1] = nums1[i];
                        nums1[i] = temp;
                        isSorted = false;
                    }
                }
            } else {
                break;
            }
        }
    }
}