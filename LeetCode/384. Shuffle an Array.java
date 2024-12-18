import java.util.Arrays;
import java.util.Random;

class Solution {
    int[] array;

    public Solution(int[] nums) {
        this.array = Arrays.copyOf(nums, nums.length);
    }

    public int[] reset() {
        return this.array;
    }

    public int[] shuffle() {
        Random random = new Random();
        int[] shuffled = Arrays.copyOf(array, array.length);

        for (int i = shuffled.length - 1; i > 0; i--) {
            int j = random.nextInt(i + 1);
            int temp = shuffled[i];
            shuffled[i] = shuffled[j];
            shuffled[j] = temp;
        }
        return shuffled;
    }
}