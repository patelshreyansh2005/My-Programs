class Solution {
    public String findLatestTime(String s) {
        char[] input = s.toCharArray();
        for (int i = 0; i < input.length; i++) {
            if (input[i] == '?') {
                if (i == 0) {
                    if (input[1] == '0' || input[1] == '1' || input[1] == '?') {
                        input[0] = '1';
                    } else {
                        input[0] = '0';
                    }
                } else if (i == 1) {
                    if (input[0] == '0') {
                        input[1] = '9';
                    } else {
                        input[1] = '1';
                    }
                } else if (i == 3) {
                    input[3] = '5';
                } else {
                    input[4] = '9';
                }
            }
        }
        return new String(input);
    }
}