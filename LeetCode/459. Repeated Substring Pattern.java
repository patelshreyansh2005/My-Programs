class Solution {
    public boolean repeatedSubstringPattern(String s) {
        int n = s.length();

        for (int len = 1; len <= n / 2; len++) {
            if (n % len == 0) {
                String pattern = s.substring(0, len);
                boolean isRepeated = true;

                for (int i = len; i < n; i += len) {
                    if (!pattern.equals(s.substring(i, i + len))) {
                        isRepeated = false;
                        break;
                    }
                }

                if (isRepeated) {
                    return true;
                }
            }
        }

        return false;
    }
}
