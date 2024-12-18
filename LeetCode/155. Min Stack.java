class ListNode {
    int val = 0;
    ListNode next = null;

    ListNode() {
        this.val = 0;
        this.next = null;
    }

    ListNode(int val) {
        this.val = val;
    }

    ListNode(int val, ListNode next) {
        this.val = val;
        this.next = next;
    }
}

class MinStack {
    private ListNode head;
    int min = Integer.MAX_VALUE;

    public MinStack() {
        head = null;
    }

    public void push(int val) {
        ListNode node = new ListNode(val);
        if (head != null) {
            node.next = head;
        }
        head = node;
        if (head.val < min) {
            min = head.val;
        }
    }

    public void pop() {
        if (head.val == min) {
            ListNode node = head.next;
            min = Integer.MAX_VALUE;
            while (node != null) {
                if (node.val < min) {
                    min = node.val;
                }
                node = node.next;
            }
        }
        head = head.next;
    }

    public int top() {
        return head.val;
    }

    public int getMin() {
        return min;
    }
}

/**
 * Your MinStack object will be instantiated and called as such:
 * MinStack obj = new MinStack();
 * obj.push(val);
 * obj.pop();
 * int param_3 = obj.top();
 * int param_4 = obj.getMin();
 */