class Solution {
    public int minDeletionSize(String[] strs) {
        if (strs.length < 2) {
            return 0;
        }
        int colsToDelete = 0;
        int len = strs[0].length();
        for (int i = 0; i < len; i++) {
            for (int j = 1; j < strs.length; j++) {
                if (strs[j-1].charAt(i) > strs[j].charAt(i)) {
                    colsToDelete++;
                    break;
                }
            }
        }
        return colsToDelete;
    }
}