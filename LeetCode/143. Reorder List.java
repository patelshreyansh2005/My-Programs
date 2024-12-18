import java.util.ArrayList;

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
    public void reorderList(ListNode head) {
        ArrayList<ListNode> al = new ArrayList<>();
        ListNode temp = head;
        while (temp != null) {
            al.add(temp);
            temp = temp.next;
        }
        for (int i = 0; i < al.size() / 2; i++) {
            al.get(i).next = al.get(al.size() - i - 1);
            al.get(al.size() - i - 1).next = al.get(i + 1);
        }
        al.get(al.size() / 2).next = null;
    }
}