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
    public ListNode doubleIt(ListNode head) {
        ListNode newHead = new ListNode(1);
        newHead.next = head;
        return helper(head) == 0 ? head : newHead;
    }

    private int helper(ListNode node) {
        if (node == null) {
            return 0;
        }
        int carry = node.val * 2 + helper(node.next);
        if (carry > 9) {
            node.val = carry - 10;
            return 1;
        }
        node.val = carry;
        return 0;
    }
}