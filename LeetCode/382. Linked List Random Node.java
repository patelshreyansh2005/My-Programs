import java.util.Random;

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
    ListNode head;
    int len;

    public Solution(ListNode head) {
        this.head = head;
        ListNode temp = head;
        while (temp != null) {
            this.len++;
            temp = temp.next;
        }
    }

    public int getRandom() {
        Random random = new Random();
        int randomInt = random.nextInt(len);
        ListNode temp = this.head;
        for (int i = 0; i < randomInt; i++) {
            temp = temp.next;
        }
        return temp.val;
    }
}