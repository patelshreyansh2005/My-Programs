import java.util.HashSet;

class Solution {
    public int distributeCandies(int[] candyType) {
        HashSet<Integer> hs = new HashSet<>();
        for (int i = 0; i < candyType.length; i++) {
            hs.add(candyType[i]);
        }
        return candyType.length / 2 >= hs.size() ? hs.size() : candyType.length / 2;
    }
}