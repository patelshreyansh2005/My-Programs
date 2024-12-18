/**
 * Definition for singly-linked list.
 * public class ListNode {
 * int val;
 * ListNode next;
 * ListNode(int x) {
 * val = x;
 * next = null;
 * }
 * }
 */

class ListNode {
    int val;
    ListNode next;

    ListNode(int x) {
        val = x;
        next = null;
    }
}

class Solution {
    public ListNode getIntersectionNode(ListNode headA, ListNode headB) {
        ListNode lA = headA,lB = headB;
        while (lA != null) {
            lB = headB;
            while (lB != null) {
                if (lA == lB) {
                    return lA;
                }
                lB = lB.next;
            }
            lA = lA.next;
        }
        return null;
    }
}