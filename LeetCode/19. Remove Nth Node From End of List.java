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
    private int k = 0;
    public ListNode removeNthFromEnd(ListNode head, int n) {
        if (head == null) {
            return null;
        }
        return removeNthFromEndOfLinkedList(head, n);
    }
    private ListNode removeNthFromEndOfLinkedList(ListNode head, int n){
        if (head.next != null) {
            head.next = removeNthFromEndOfLinkedList(head.next, n);
        }
        k++;
        if (k == n) {
            return head.next;
        }
        return head;
    }
}