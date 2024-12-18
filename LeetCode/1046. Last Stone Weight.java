class Solution {
    public int lastStoneWeight(int[] stones) {
        if (stones.length == 1) {
            return stones[0];
        }
        int maxIndex, secMaxIndex;
        for (int j = 0; j < 30; j++) {
            maxIndex = 0;
            secMaxIndex = 1;
            if (stones[secMaxIndex] > stones[maxIndex]) {
                int temp = secMaxIndex;
                secMaxIndex = maxIndex;
                maxIndex = temp;
            }
            for (int i = 2; i < stones.length; i++) {
                if (stones[i] > stones[maxIndex]) {
                    secMaxIndex = maxIndex;
                    maxIndex = i;
                } else if (stones[i] > stones[secMaxIndex]) {
                    secMaxIndex = i;
                }
            }
            stones[maxIndex] -= stones[secMaxIndex];
            stones[secMaxIndex] = 0;
        }
        for (int i = 0; i < stones.length; i++) {
            if (stones[i] != 0) {
                return stones[i];
            }
        }
        return 0;
    }
}