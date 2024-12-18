import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;

class Solution {
    public String[] findWords(String[] words) {
        HashSet<Character> firstRow = new HashSet<>(Arrays.asList('Q', 'W', 'E', 'R', 'T', 'Y', 'U', 'I', 'O', 'P'));
        HashSet<Character> secondRow = new HashSet<>(Arrays.asList('A', 'S', 'D', 'F', 'G', 'H', 'J', 'K', 'L'));
        HashSet<Character> thirdRow = new HashSet<>(Arrays.asList('Z', 'X', 'C', 'V', 'B', 'N', 'M'));

        ArrayList<String> resultList = new ArrayList<>();

        for (String word : words) {
            String temp = word.toUpperCase();
            boolean willAdd = true;

            HashSet<Character> rowToCheck = firstRow;

            if (secondRow.contains(temp.charAt(0))) {
                rowToCheck = secondRow;
            } else if (thirdRow.contains(temp.charAt(0))) {
                rowToCheck = thirdRow;
            }

            for (int j = 0; j < temp.length(); j++) {
                if (!rowToCheck.contains(temp.charAt(j))) {
                    willAdd = false;
                    break;
                }
            }

            if (willAdd) {
                resultList.add(word);
            }
        }

        return resultList.toArray(new String[0]);
    }
}
