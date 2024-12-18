class Solution {
    public int scoreOfString(String s) {
        int score = 0;
        char[] input = s.toCharArray();
        for (int i = 1; i < input.length; i++) {
            score += Math.abs(input[i - 1] - input[i]);
        }
        return score;
    }
}