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
    public ListNode removeElements(ListNode head, int val) {
        if (head == null) {
            return null;
        }
        ListNode firstNode = new ListNode(0, head);
        ListNode newHead = firstNode;
        while (newHead.next != null) {
            if (newHead.next.val == val) {
                ListNode temp = newHead.next;
                newHead.next = newHead.next.next;
                temp.next = null;
            }
            else{
                newHead = newHead.next;
            }
        }
        return firstNode.next;
    }
}