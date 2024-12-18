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
    public ListNode partition(ListNode head, int x) {
        ListNode temp1 = head;
        ListNode node = null;
        ListNode temp2 = null;
        while (temp1 != null) {
            if (temp1.val < x) {
                if (node == null) {
                    ListNode newNode = new ListNode(temp1.val);
                    newNode.val = temp1.val;
                    node = newNode;
                    temp2 = node;
                } else {
                    ListNode newNode = new ListNode(temp1.val);
                    temp2.next = newNode;
                    temp2 = newNode;
                }
            }
            temp1 = temp1.next;
        }
        temp1 = head;
        while (temp1 != null) {
            if (temp1.val >= x) {
                if (node == null) {
                    ListNode newNode = new ListNode(temp1.val);
                    newNode.val = temp1.val;
                    node = newNode;
                    temp2 = node;
                } else {
                    ListNode newNode = new ListNode(temp1.val);
                    temp2.next = newNode;
                    temp2 = newNode;
                }
            }
            temp1 = temp1.next;
        }
        return node;
    }
}