import java.util.ArrayList;

class Solution {
    public String[] uncommonFromSentences(String s1, String s2) {
        String s = s1 + ' ' + s2;
        String[] array = s.split(" ");
        ArrayList<String> al = new ArrayList<>();
        boolean isCommon;
        for (int i = 0; i < array.length; i++) {
            isCommon = false;
            for (int j = 0; j < array.length; j++) {
                if (i != j && array[i].equals(array[j])) {
                    isCommon = true;
                    break;
                }
            }
            if (!isCommon) {
                al.add(array[i]);
            }
        }
        return al.toArray(new String[0]);
    }
}
