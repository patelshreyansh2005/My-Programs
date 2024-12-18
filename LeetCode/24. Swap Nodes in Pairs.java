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
    public ListNode swapPairs(ListNode head) {
        if (head == null || head.next == null) {
            return head;
        }
        ListNode[] f = new ListNode[50];
        ListNode[] s = new ListNode[50];
        ListNode temp = head;
        int i = 0, j = 0, k = 0;
        while (temp != null) {
            if (i % 2 == 0) {
                f[j++] = temp;
            } else {
                s[k++] = temp;
            }
            i++;
            temp = temp.next;
        }
        k = i;
        head = s[0];
        i = 0;
        while (f[i + 1] != null) {
            f[i].next = s[i + 1];
            i++;
        }
        f[i].next = null;
        i = 0;
        while (s[i] != null) {
            s[i].next = f[i];
            i++;
        }
        if (k % 2 != 0) {
            f[j - 2].next = f[j - 1];
        }
        return head;
    }
}