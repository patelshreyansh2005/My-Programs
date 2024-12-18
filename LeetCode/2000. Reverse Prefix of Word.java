class Solution {
    public String reversePrefix(String word, char ch) {
        char[] wordArray = word.toCharArray();
        for (int i = 0; i < wordArray.length; i++) {
            if (wordArray[i] == ch) {
                char temp;
                for (int j = 0; j <= i / 2; j++) {
                    temp = wordArray[j];
                    wordArray[j] = wordArray[i - j];
                    wordArray[i - j] = temp;
                }
                break;
            }
        }
        return String.copyValueOf(wordArray);
    }
}