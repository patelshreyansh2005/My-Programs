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
        if (head == null || head.next == null) {
            return head;
        }
        if (head.val == head.next.val) {
            return deleteDuplicatesHelper(head.next, true);
        }
        return deleteDuplicatesHelper(head, false);
    }

    private ListNode deleteDuplicatesHelper(ListNode node, boolean isDuplicate) {
        if (node.next != null) {
            if (node.val == node.next.val) {
                    return deleteDuplicatesHelper(node.next, true);
            } else {
                if (isDuplicate) {
                    return deleteDuplicatesHelper(node.next, false);
                } else {
                    node.next = deleteDuplicatesHelper(node.next, false);
                    return node;
                }
            }
        } else {
            return isDuplicate ? null : node;
        }
    }
}
