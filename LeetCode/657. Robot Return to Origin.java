class Solution {
    public boolean judgeCircle(String moves) {
        int ud = 0, lr = 0;
        for (char i : moves.toCharArray()) {
            if (i == 'U') {
                ud++;
            } else if (i == 'D') {
                ud--;
            } else if (i == 'L') {
                lr++;
            } else {
                lr--;
            }
        }
        return ud == 0 && lr == 0;
    }
}