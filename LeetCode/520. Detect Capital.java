class Solution {
    public boolean detectCapitalUse(String word) {
        String lower = word.toLowerCase();
        String upper = word.toUpperCase();
        String cap = Character.toUpperCase(word.charAt(0)) + lower.substring(1);

        return word.equals(lower) || word.equals(upper) || word.equals(cap);
    }
}
