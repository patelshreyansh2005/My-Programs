import java.util.ArrayList;

class Solution {
    public boolean backspaceCompare(String s, String t) {
        return removeBackspace(s).equals(removeBackspace(t));
    }
    private String removeBackspace(String str) {
    int len = str.length();
    ArrayList<Character> al = new ArrayList<>();
    for (int i = 0; i < len; i++) {
        al.add(str.charAt(i));
    }
    for (int i = 0; i < al.size(); i++) {
        if (al.get(i) == '#') {
            if (i > 0) {
                al.remove(i);
                al.remove(i - 1);
                i -= 2;
            } else {
                al.remove(i);
                i--;
            }
        }
    }
    StringBuilder result = new StringBuilder(al.size());
    for (Character c : al) {
        result.append(c);
    }
    return result.toString();
}

}
