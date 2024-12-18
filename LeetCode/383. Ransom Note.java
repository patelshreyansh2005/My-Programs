class Solution {
    public boolean canConstruct(String ransomNote, String magazine) {
        StringBuilder magazineList = new StringBuilder(magazine);
        int len = ransomNote.length();
        int magazineLen;
        boolean isFound = false;
        for (int i = 0; i < len; i++) {
            magazineLen = magazineList.length();
            isFound = false;
            for (int j = 0; j < magazineLen; j++) {
                if (magazineList.charAt(j) == ransomNote.charAt(i)) {
                    magazineList.delete(j, j + 1);
                    isFound = true;
                    break;
                }
            }
            if (!isFound) {
                return false;
            }
        }
        return true;

    }
}