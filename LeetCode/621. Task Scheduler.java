import java.util.ArrayList;

class Solution {
    public int leastInterval(char[] tasks, int n) {
        int[] freq = new int[26];
        ArrayList<Character> sol = new ArrayList<>();
        for (int i : tasks) {
            freq[i - 65]++;
        }

        for (int i = 0; i < freq.length; i++) {
            sol.add((char) (nextMax(freq, sol, n) + 65));
        }

        return 0;
    }

    private int nextMax(int[] freq, ArrayList<Character> sol, int n) {
        int prvMax = 0;
        int max = 0;
        for (int i = 0; i < freq.length; i++) {
            if (freq[i] > freq[prvMax]) {
                prvMax = i;
            }
        }
        if (!isCharInLeft(sol, n, (char) (freq[max]))) {
            return prvMax;
        }
        while (true) {
            for (int i = 0; i < freq.length; i++) {
                if (freq[i] > freq[max] && prvMax != i) {
                    max = i;
                }
            }
            if (isCharInLeft(sol, n, (char) (freq[max]))) {
                return max;
            } else {
                prvMax = max;
                max = 0;
            }
        }
    }

    private boolean isCharInLeft(ArrayList<Character> sol, int n, char nextChar) {
        int len = sol.size();
        if (len == 0) {
            return true;
        }
        for (int i = len - n; i < len; i++) {
            if (sol.get(i) == nextChar) {
                return false;
            }
        }
        return true;
    }
}