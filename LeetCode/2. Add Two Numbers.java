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
        ListNode ans = null;
        ListNode temp1 = l1;
        ListNode temp2 = l2;
        ListNode temp3 = null;
        int num1 = 0, num2 = 0, temp = 0, k = 0;
        while (temp1 != null || temp2 != null || k > 0) {
            num1 = 0;
            num2 = 0;

            if (temp1 != null) {
                num1 = temp1.val;
                temp1 = temp1.next;
            }
            if (temp2 != null) {
                num2 = temp2.val;
                temp2 = temp2.next;
            }

            temp = num1 + num2 + k;
            k = temp / 10;

            ListNode newNode = new ListNode(temp % 10);

            if (ans == null) {
                ans = newNode;
                temp3 = newNode;
            } else {
                temp3.next = newNode;
                temp3 = temp3.next;
            }
        }
        return ans;
    }

}