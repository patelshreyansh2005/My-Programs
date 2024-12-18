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
    public ListNode rotateRight(ListNode head, int k) {
        if (head == null || head.next == null) {
            return head;
        }
        int count = 0;
        ListNode temp = head;
        while (temp != null) {
            count++;
            temp = temp.next;
        }
        k = k % count;
        if (k == 0) {
            return head;
        }
        temp = head;
        ListNode[] nodes = new ListNode[count];
        for (int i = 0; i < nodes.length; i++) {
            nodes[i] = temp;
            if (temp.next != null) {
                temp = temp.next;
            }
        }
        temp.next = head;
        nodes[nodes.length - k - 1].next = null;
        head = nodes[nodes.length - k];
        return head;
    }
}