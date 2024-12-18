import java.util.Arrays;

class Solution {
    public String[] findRelativeRanks(int[] score) {
        int[] copy = Arrays.copyOf(score, score.length);
        Arrays.sort(copy);
        String[] ranks = new String[score.length];
        for (int i = 0; i < score.length; i++) {
            int rank = Arrays.binarySearch(copy, score[i]);
            if (rank == copy.length - 1) {
                ranks[i] = "Gold Medal";
            } else if (rank == copy.length - 2) {
                ranks[i] = "Silver Medal";
            } else if (rank == copy.length - 3) {
                ranks[i] = "Bronze Medal";
            } else {
                ranks[i] = String.valueOf(copy.length - rank);
            }
        }
        return ranks;
    }
}
