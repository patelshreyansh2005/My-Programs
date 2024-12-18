import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

class Solution {
    public boolean wordPattern(String pattern, String s) {
        char[] patternArray = pattern.toCharArray();
        String[] sArray = s.split(" ");
        if (patternArray.length != sArray.length) {
            return false;
        }
        Map<Character, String> hashMap = new HashMap<>();
        for (int i = 0; i < patternArray.length; i++) {
            if (hashMap.containsKey(patternArray[i])) {
                if (!sArray[i].equals(hashMap.get(patternArray[i]))) {
                    return false;
                }
            } else {
                hashMap.put(patternArray[i], sArray[i]);
            }
        }
        Set<String> uniqueValues = new HashSet<>();
        for (String value : hashMap.values()) {
            if (!uniqueValues.add(value)) {
                return false;
            }
        }
        return true;
    }
}