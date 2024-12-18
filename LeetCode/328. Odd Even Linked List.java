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
    public ListNode oddEvenList(ListNode head) {
        if (head == null || head.next == null) {
            return head;
        }
        ListNode odd = null, oddTemp = null, even = null, evenTemp = null, node = head;
        boolean isOdd = true;
        while (node != null) {
            if (isOdd) {
                if (odd == null) {
                    odd = node;
                    oddTemp = odd;
                } else {
                    oddTemp.next = node;
                    oddTemp = node;
                }
            } else {
                if (even == null) {
                    even = node;
                    evenTemp = even;
                } else {
                    evenTemp.next = node;
                    evenTemp = node;
                }
            }
            isOdd = !isOdd;
            node = node.next;
        }
        oddTemp.next = even;
        evenTemp.next = null;
        return odd;
    }
}