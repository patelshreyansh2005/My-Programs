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
    public ListNode insertGreatestCommonDivisors(ListNode head) {
        if (head.next == null) {
            return head;
        }
        return helper(head);
    }

    private ListNode helper(ListNode node) {
        if (node.next == null) {
            return node;
        }
        helper(node.next);
        ListNode newNode = new ListNode(gcd(node.val, node.next.val));
        newNode.next = node.next;
        node.next = newNode;
        return node;
    }

    private int gcd(int a, int b) {
        if (b == 0) {
            return a;
        } else {
            return gcd(b, a % b);
        }
    }
}