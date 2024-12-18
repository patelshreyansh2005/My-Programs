class Solution {
    public String reverseOnlyLetters(String s) {
        String[] arr = new StringBuilder(s.replaceAll("[^a-zA-Z]", "")).reverse().toString().split("");
        int j = 0;
        int len = s.length();
        StringBuilder ans = new StringBuilder();
        
        for (int i = 0; i < len; i++) {
            if (!Character.isLetter(s.charAt(i))) {
                ans.append(s.charAt(i));
            } else {
                ans.append(arr[j++]);
            }
        }
        
        return ans.toString();
    }
}
