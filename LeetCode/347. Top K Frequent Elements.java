import java.util.ArrayList;
import java.util.TreeMap;

class Solution {
    public int[] topKFrequent(int[] nums, int k) {
        int[] freq = new int[20001];
        for (int i : nums) {
            freq[i + 10000]++;
        }
        TreeMap<Integer, ArrayList<Integer>> treeMap = new TreeMap<>();
        ArrayList<Integer> temp = new ArrayList<>();
        for (int i = 20000; i >= 0; i--) {
            if (treeMap.containsKey(freq[i])) {
                temp = treeMap.get(freq[i]);
                temp.add(i - 10000);
                treeMap.put(freq[i], temp);
            } else {
                if (freq[i] != 0) {
                    temp = new ArrayList<Integer>();
                    temp.add(i - 10000);
                    treeMap.put(freq[i], temp);
                }
            }
        }
        ArrayList<Integer> al = new ArrayList<>();
        for (int i = 0; i < k; i++) {
            al.addAll(treeMap.pollLastEntry().getValue());
            if (al.size() >= k) {
                break;
            }
        }
        int[] ans = new int[k];
        for (int i = 0; i < k; i++) {
            ans[i] = al.get(i);
        }
        return ans;
    }
}