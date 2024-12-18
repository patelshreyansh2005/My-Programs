import java.util.PriorityQueue;

class Solution {
    public int[] sortArray(int[] nums) {
        PriorityQueue<Integer> pq = new PriorityQueue<>();
        for (Integer i : nums) {
            pq.add(i);
        }
        int[] sorted = new int[nums.length];
        for (int i = 0; i < sorted.length; i++) {
            sorted[i] = pq.poll();
        }
        return sorted;
    }
}