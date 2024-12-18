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
    public ListNode swapNodes(ListNode head, int k) {
        ListNode node = head;
        int len = 0;
        ListNode kNode = null, kLastNode = null;
        while (node != null) {
            len++;
            if (len == k) {
                kNode = node;
            }
            node = node.next;
        }
        node = head;
        int i = 1;
        while (node != null) {
            if (i == len - k + 1) {
                kLastNode = node;
                break;
            }
            i++;
            node = node.next;
        }
        int temp = kNode.val;
        kNode.val = kLastNode.val;
        kLastNode.val = temp;
        return head;
    }
}