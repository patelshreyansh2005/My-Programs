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
    public ListNode reverseKGroup(ListNode head, int k) {
        ListNode temp = head;
        ListNode nextTempHead = null;
        ListNode tempHead = head;
        ListNode prevTail = null;
        head = null;
        int i = 0;
        while (temp != null) {
            i++;
            if (i == k) {
                i = 0;
                nextTempHead = temp.next;
                temp.next = null;
                ListNode prev = null;
                ListNode current = tempHead;
                while (current != null) {
                    ListNode nextTemp = current.next;
                    current.next = prev;
                    prev = current;
                    current = nextTemp;
                }
                if (head == null) {
                    head = prev;
                }
                if (prevTail != null) {
                    prevTail.next = prev;
                }
                if (tempHead == null) {
                    break;
                }
                tempHead.next = nextTempHead;
                prevTail = tempHead;
                tempHead = nextTempHead;
                temp = tempHead;
            } else {
                temp = temp.next;
            }
        }
        return head;
    }
}