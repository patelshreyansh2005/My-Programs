class Solution {
    public int calPoints(String[] operations) {
        int[] record = new int[1000];
        int i = 0;
        for (int j = 0; j < operations.length; j++) {
            if (operations[j].equals("+")) {
                record[i] = record[i - 1] + record[i - 2];
                i++;
            } else if (operations[j].equals("D")) {
                record[i] = record[i - 1] * 2;
                i++;
            } else if (operations[j].equals("C")) {
                record[i] = 0;
                i--;
            } else {
                record[i] = Integer.parseInt(operations[j]);
                i++;
            }
        }
        if (i < 0) {
            return 0;
        }
        int ans = 0;
        for (int j = 0; j < i; j++) {
            ans += record[j];
        }
        return ans;
    }
}