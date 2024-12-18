class Solution {
    public double findMedianSortedArrays(int[] nums1, int[] nums2) {
        int num1Len = nums1.length;
        int num2Len = nums2.length;
        int len = (num1Len + num2Len) / 2 + 1;
        int k = 0, j = 0, l = 0;
        int[] arr = new int[len];
        for (int i = 0; i < len; i++) {
            if (j < num1Len && k < num2Len) {
                if (nums1[j] < nums2[k]) {
                    arr[l] = nums1[j];
                    j++;
                } else {
                    arr[l] = nums2[k];
                    k++;
                }
            } else if (j < num1Len) {
                arr[l] = nums1[j];
                j++;
            } else if (k < num2Len) {
                arr[l] = nums2[k];
                k++;
            }
            l++;
        }
        if ((num1Len + num2Len) % 2 == 0) {
            return (arr[arr.length - 1] + arr[arr.length - 2]) / 2.0;
        } else {
            return arr[arr.length - 1];
        }
    }

}