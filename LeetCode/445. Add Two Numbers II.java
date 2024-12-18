import java.util.Stack;

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
    public ListNode addTwoNumbers(ListNode l1, ListNode l2) {
        Stack<Integer> s1 = new Stack<>();
        Stack<Integer> s2 = new Stack<>();
        Stack<Integer> ans = new Stack<>();
        ListNode node = l1;
        while (node != null) {
            s1.add(node.val);
            node = node.next;
        }
        node = l2;
        while (node != null) {
            s2.add(node.val);
            node = node.next;
        }
        int carry = 0, sum = 0;
        while (!(s1.isEmpty() && s2.isEmpty()) || carry != 0) {
            sum = carry + (s1.isEmpty() ? 0 : s1.pop()) + (s2.isEmpty() ? 0 : s2.pop());
            carry = sum > 9 ? 1 : 0;
            ans.add(sum % 10);
        }
        ListNode ansHead = new ListNode(0);
        node = ansHead;
        while (!ans.isEmpty()) {
            node.next = new ListNode(ans.pop());
            node = node.next;
        }
        return ansHead.next;
    }
}