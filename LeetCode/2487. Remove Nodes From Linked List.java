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

// class Solution {
//     public ListNode removeNodes(ListNode head) {
//         if (head == null) {
//             return null;
//         }
//         head.next = removeNodes(head.next);
//         ListNode node = head.next;
//         while (node != null) {
//             if (node.val > head.val) {
//                 return head.next;
//             }
//             node = node.next;
//         }
//         return head;
//     }
// }

class Solution {
    public ListNode removeNodes(ListNode head) {
        if (head.next == null) {
            return head;
        }

        head.next = removeNodes(head.next);
        if (head.val < head.next.val) {
            return head.next;
        }
        return head;
    }
}