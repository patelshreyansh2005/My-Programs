class Solution {
    public int countSegments(String s) {
        if (s.equals("")) {
            return 0;
        }
        String[] segs = s.split(" ");
        int count = 0;
        for (int i = 0; i < segs.length; i++) {
            if (!segs[i].equals("")) {
                count++;
            }
        }
        return count;
    }
}