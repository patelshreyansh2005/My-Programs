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
    public boolean isPalindrome(ListNode head) {
        if (head == null) {
            return true;
        }
        Stack<Integer> s = new Stack<>();
        ListNode node = head;
        int numbersOfNodes = 0;
        while (node != null) {
            s.push(node.val);
            numbersOfNodes++;
            node = node.next;
        }
        node = head;
        numbersOfNodes = numbersOfNodes / 2 + 1;
        for (int i = 0; i < numbersOfNodes; i++) {
            if (node.val != s.pop()) {
                return false;
            }
            node = node.next;
        }
        return true;
    }
}