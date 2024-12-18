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
    public ListNode deleteDuplicates(ListNode head) {
        if (head == null) {
            return head;
        }
        ListNode temp1 = head;
        ListNode temp2;
        while (temp1.next != null) {
            if (temp1.val == temp1.next.val) {
                temp2 = temp1.next;
                temp1.next = temp1.next.next;
                temp2.next = null;
            } else {
                temp1 = temp1.next;
            }
        }
        return head;
    }
}