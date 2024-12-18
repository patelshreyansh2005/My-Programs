class ListNode {
    int val;
    ListNode next;

    ListNode(int x) {
        val = x;
        next = null;
    }
}

class Solution {
    public ListNode detectCycle(ListNode head) {
        if (head == null) {
            return null;
        }
        if (head.next == null) {
            return null;
        }
        if (head.next.next == head) {
            return head;
        }
        return helper(head);
    }

    private ListNode helper(ListNode node) {
        ListNode prev = node;
        ListNode current = node.next;
        ListNode temp;
        int count, prvCount = 0;
        while (current != null) {
            count = 0;
            temp = node;
            while (temp != current) {
                count++;
                temp = temp.next;
            }
            if (count <= prvCount) {
                return current;
            }
            prvCount = count;
            prev = prev.next;
            current = current.next;
        }
        return null;
    }
}