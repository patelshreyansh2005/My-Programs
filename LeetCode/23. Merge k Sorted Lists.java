/**
 * Definition for singly-linked list.
 * public class ListNode {
 * int val;
 * ListNode next;
 * ListNode() {}
 * ListNode(int val) { this.val = val; }
 * ListNode(int val, ListNode next) { this.val = val; this.next = next; }
 * }
 */

class ListNode {
    int val;
    ListNode next;

    ListNode() {
    }

    ListNode(int val) {
        this.val = val;
    }

    ListNode(int val, ListNode next) {
        this.val = val;
        this.next = next;
    }
}

class Solution {
    public ListNode mergeKLists(ListNode[] lists) {
        ListNode ans = null, temp = null, last = null;
        int minIndex = -1;
        do {
            minIndex = -1;
            for (int i = 0; i < lists.length; i++) {
                if (lists[i] != null && (minIndex == -1 || lists[i].val < lists[minIndex].val)) {
                    minIndex = i;
                }
            }
            if (minIndex == -1) {
                break;
            }
            temp = lists[minIndex];
            if (ans == null) {
                ans = temp;
                last = temp;
            } else {
                last.next = temp;
                last = temp;
            }
            lists[minIndex] = temp.next;
        } while (true);
        return ans;
    }
}