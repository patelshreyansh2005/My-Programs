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
    public int getDecimalValue(ListNode head) {
        int len = 0, decimal = 0;
        ListNode node = head;
        while (node != null) {
            len++;
            node = node.next;
        }
        node = head;
        while (node != null) {
            decimal += node.val * Math.pow(2, --len);
            node = node.next;
        }
        return decimal;
    }
}