import java.util.ArrayList;

/**
 * Definition for singly-linked list.
 * class ListNode {
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
    public boolean hasCycle(ListNode head) {
        ArrayList<ListNode> al = new ArrayList<>();
        ListNode temp = head;
        while (temp != null) {
            if (al.contains(temp)) {
                return true;
            }
            al.add(temp);
            temp = temp.next;
        }
        return false;
    }
}