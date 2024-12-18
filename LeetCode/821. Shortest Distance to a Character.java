class Solution {
    public int[] shortestToChar(String s, char c) {
        int count = 0;
        int len = s.length();
        for (int i = 0; i < len; i++) {
            if (s.charAt(i) == c) {
                count++;
            }
        }
        int[] index = new int[count];
        int[] result = new int[len];
        count = 0;
        for (int i = 0; i < len; i++) {
            if (s.charAt(i) == c) {
                index[count++] = i;
            }
        }
        int diff = len;
        for (int i = 0; i < len; i++) {
            for (int j = 0; j < index.length; j++) {
                count = Math.abs(index[j] - i);
                if (count < diff) {
                    diff = count;
                }
            }
            result[i] = diff;
            diff = len;
        }
        return result;
    }
}