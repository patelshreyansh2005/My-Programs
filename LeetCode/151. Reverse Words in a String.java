class Solution {
    public String reverseWords(String s) {
        String[] input = s.split(" ");
        StringBuilder sb = new StringBuilder();
        for (int i = input.length - 1; i >= 0; i--) {
            if (!input[i].equals("")) {
                sb.append(input[i]);
                sb.append(" ");
            }
        }
        sb.deleteCharAt(sb.length() - 1);
        return sb.toString();
    }
}