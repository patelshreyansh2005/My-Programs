class Solution {
    public int compareVersion(String version1, String version2) {
        String[] v1 = version1.split("\\.");
        String[] v2 = version2.split("\\.");
        int i = 0;
        while (true) {
            if (i == v1.length) {
                for (int j = i; j < v2.length; j++) {
                    if (Integer.parseInt(v2[j]) > 0) {
                        return -1;
                    }
                }
                break;
            }
            if (i == v2.length) {
                for (int j = i; j < v1.length; j++) {
                    if (Integer.parseInt(v1[j]) > 0) {
                        return 1;
                    }
                }
                break;
            }
            if (Integer.parseInt(v1[i]) < Integer.parseInt(v2[i])) {
                return -1;
            } else if (Integer.parseInt(v1[i]) > Integer.parseInt(v2[i])) {
                return 1;
            }
            i++;
        }
        return 0;
    }
}