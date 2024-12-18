class Solution {
    public int balancedStringSplit(String s) {
        int count = 0,balFac = 0;
        for (char c : s.toCharArray()) {
            if (c == 'R') {
                balFac++;
            } else {
                balFac--;
            }
            if (balFac == 0) {
                count++;
            }
        }
        return count;
    }
}