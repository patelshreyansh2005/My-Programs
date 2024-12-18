class Solution {
    public boolean canPlaceFlowers(int[] flowerbed, int n) {
        int i = 0;
        int canPlant = 0;
        if (flowerbed.length == 1) {
            return (flowerbed[0] == 0 && n <= 1) || n == 0;
        } else if (flowerbed.length == 2) {
            return (flowerbed[0] == 0 && flowerbed[1] == 0 && n <= 1) || n == 0;
        }
        while (i < flowerbed.length) {
            if (flowerbed[i] == 0 && (i == 0 || flowerbed[i - 1] == 0) && (i == flowerbed.length - 1 || flowerbed[i + 1] == 0)) {
                flowerbed[i] = 1;
                canPlant++;
                i += 2;
            } else {
                i++;
            }
        }
        return n <= canPlant;
    }
}
