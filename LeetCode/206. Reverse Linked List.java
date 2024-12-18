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
    public ListNode reverseList(ListNode head) {
        if (head == null || head.next == null) {
            return head;
        }
        ListNode node = helper(head, head.next);
        head.next = null;
        return node;
    }
    private ListNode helper(ListNode prev,ListNode current){
        if (current.next == null) {
            current.next = prev;
            return current;
        }
        ListNode node = helper(current, current.next);
        current.next = prev;

        return node;

    }
}
// class Solution {
//     public ListNode reverseList(ListNode head) {
//         ListNode prev = null;
//         ListNode current = head;
//         while (current != null) {
//             ListNode nextTemp = current.next;
//             current.next = prev;
//             prev = current;
//             current = nextTemp;
//         }
//         return prev;
//     }
// }
