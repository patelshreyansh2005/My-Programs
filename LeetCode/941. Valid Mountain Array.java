class Solution {
    public boolean validMountainArray(int[] arr) {
        int max = 0;
        for (int i = 0; i < arr.length; i++) {
            if (arr[i] > arr[max]) {
                max = i;
            }
        }
        max++;
        for (int i = 1; i < max; i++) {
            if (arr[i] <= arr[i - 1]) {
                return false;
            }
        }
        for (int i = max; i < arr.length; i++) {
            if (arr[i] >= arr[i - 1]) {
                return false;
            }
        }
        return max - 1 != 0 && max - 1 != arr.length - 1;
    }
}