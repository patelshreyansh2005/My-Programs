class Solution {
    public boolean isNumber(String s) {
        char[] input = s.toCharArray();
        int dotCount = 0;
        int ECount = 0;
        int eCount = 0;
        int plusCount = 0;
        int minusCount = 0;
        int digitCount = 0;
        for (char c : input) {
            if (Character.isAlphabetic(c) && c != 'e' && c != 'E') {
                return false;
            }
            if (c == '.') {
                dotCount++;
            } else if (c == 'e') {
                eCount++;
            } else if (c == 'E') {
                ECount++;
            } else if (c == '+') {
                plusCount++;
            } else if (c == '-') {
                minusCount++;
            } else {
                digitCount++;
            }
        }
        if (dotCount > 1) {
            return false;
        }
        if (ECount > 1 || eCount > 1 || (eCount == 1 && ECount == 1)) {
            return false;
        }
        if ((plusCount > 1 && eCount == 0 && ECount == 0) || (minusCount > 1 && eCount == 0 && ECount == 0)
                || (plusCount == 1 && minusCount == 1 && eCount == 0 && ECount == 0)) {
            return false;
        }
        if ((dotCount > 0 || eCount > 0 || ECount > 0 || plusCount > 0 || minusCount > 0) && digitCount == 0) {
            return false;
        }
        if (plusCount > 0 && input[0] != '+' && (eCount == 0 && ECount == 0)) {
            return false;
        }
        if (minusCount > 0 && input[0] != '-' && (eCount == 0 && ECount == 0)) {
            return false;
        }
        if (eCount > 0 || ECount > 0) {
            boolean temp1 = false;
            boolean temp2 = false;
            for (char c : input) {
                if ((c == '+' || c == '-') && temp1) {
                    return false;
                } else if (c == 'e' || c == 'E') {
                    if (!temp1) {
                        return false;
                    }
                    temp1 = false;
                    temp2 = true;
                } else if (c == '.' && temp2) {
                    return false;
                } else if(Character.isDigit(c)) {
                    temp1 = true;
                }
            }
            if (!temp1) {
                return false;
            }
        }
        return true;
    }
}