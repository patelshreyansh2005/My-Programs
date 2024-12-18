class Solution {
    public int sumOfEncryptedInt(int[] nums) {
        int sum = 0;
        for (int i : nums) {
            char[] arr = Integer.toString(i).toCharArray();
            char max = 0;
            for (char j : arr) {
                if (j > max) {
                    max = j;
                }
            }
            for (int j = 0; j < arr.length; j++) {
                arr[j] = max;
            }
            sum += Integer.parseInt(String.copyValueOf(arr));
        }
        return sum;
    }
}