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
    public ListNode reverseBetween(ListNode head, int left, int right) {
        ListNode node = head;
        int count = 0;
        while (node != null) {
            count++;
            node = node.next;
        }
        ListNode[] linkList = new ListNode[count];
        node = head;
        count = 0;
        while (node != null) {
            linkList[count++] = node;
            node = node.next;
        }
        left--;
        right--;
        while (left < right) {
            node = linkList[left];
            linkList[left] = linkList[right];
            linkList[right] = node;
            left++;
            right--;
        }
        ListNode temp = null;
        for (int i = 0; i < linkList.length; i++) {
            if (i == 0) {
                node = linkList[0];
                temp = node;
            } else {
                temp.next = linkList[i];
                temp = temp.next;
            }
        }
        linkList[linkList.length - 1].next = null;
        return node;
    }
}