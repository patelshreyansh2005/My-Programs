import java.util.ArrayList;
import java.util.List;

class Solution {
    public List<Integer> findWordsContaining(String[] words, char x) {
        ArrayList<Integer> al = new ArrayList<>();
        for (int i = 0; i < words.length; i++) {
            for (char c : words[i].toCharArray()) {
                if (c == x) {
                    al.add(i);
                    break;
                }
            }
        }
        return al;
    }
}