class Solution {
    public String reverseVowels(String s) {
        int len = s.length();
        char temp;
        StringBuilder vowels = new StringBuilder();
        StringBuilder reversedS = new StringBuilder();
        int j = 0;

        for (int i = len - 1; i >= 0; i--) {
            temp = s.charAt(i);
            if (temp == 'a' || temp == 'A' || temp == 'e' || temp == 'E' || temp == 'i' || temp == 'I' || temp == 'o' || temp == 'O' || temp == 'u' || temp == 'U') {
                vowels.append(temp);
            }
        }

        if (vowels.length() == 0) {
            return s;
        }

        for (int i = 0; i < len; i++) {
            temp = s.charAt(i);
            if (temp == 'a' || temp == 'A' || temp == 'e' || temp == 'E' || temp == 'i' || temp == 'I' || temp == 'o' || temp == 'O' || temp == 'u' || temp == 'U') {
                reversedS.append(vowels.charAt(j));
                j++;
            } else {
                reversedS.append(temp);
            }
        }

        return reversedS.toString();
    }
}
