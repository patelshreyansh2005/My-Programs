
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
    public ListNode sortList(ListNode head) {
        if (head == null) {
            return null;
        }
        return insertionSortList(head);
    }

    public ListNode insertionSortList(ListNode head) {
        ListNode newHead = head;
        ListNode prev1 = head;
        ListNode current1 = head.next;
        while (current1 != null) {
            ListNode prev2 = null;
            ListNode current2 = newHead;
            while (current2.val <= current1.val && current2 != current1) {
                prev2 = current2;
                current2 = current2.next;
            }
            if (current1 != current2) {
                if (prev2 == null) {
                    prev1.next = current1.next;
                    current1.next = newHead;
                    newHead = current1;
                    current1 = prev1.next;
                } else {
                    prev2.next = current1;
                    prev1.next = current1.next;
                    current1.next = current2;
                    current1 = prev1.next;
                }
            } else {
                prev1 = current1;
                current1 = current1.next;
            }
        }
        return newHead;
    }
}