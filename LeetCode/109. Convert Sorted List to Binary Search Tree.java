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

class TreeNode {
    int val;
    TreeNode left;
    TreeNode right;

    TreeNode() {
    }

    TreeNode(int val) {
        this.val = val;
    }

    TreeNode(int val, TreeNode left, TreeNode right) {
        this.val = val;
        this.left = left;
        this.right = right;
    }
}

class Solution {
    public TreeNode sortedListToBST(ListNode head) {
        if (head == null) {
            return null;
        }

        return buildBST(head, null);
    }

    private TreeNode buildBST(ListNode head, ListNode tail) {
        if (head == tail) {
            return null;
        }

        ListNode slow = head, fast = head.next;
        while (fast != tail && fast.next != tail) {
            slow = slow.next;
            fast = fast.next.next;
        }

        TreeNode root = new TreeNode(slow.val);
        root.left = buildBST(head, slow);
        root.right = buildBST(slow.next, tail);
        return root;
    }
}

// class Solution {
// public TreeNode sortedListToBST(ListNode head) {
// if (head == null) {
// return null;
// }
// if (head.next == null) {
// return new TreeNode(head.val);
// }
// TreeNode treeHead = new TreeNode(head.val);
// ListNode temp = head.next;
// while (temp != null) {
// treeHead = insertIntoBST(treeHead, temp.val);
// temp = temp.next;
// }
// return treeHead;
// }

// private TreeNode insertIntoBST(TreeNode treeHead, int val) {
// TreeNode temp = treeHead;
// while (true) {
// if (temp.val < val) {
// if (temp.right != null) {
// temp = temp.right;
// } else {
// temp.right = new TreeNode(val);
// break;
// }
// } else {
// if (temp.left != null) {
// temp = temp.left;
// } else {
// temp.left = new TreeNode(val);
// break;
// }
// }
// }
// return toAVL(treeHead);
// }

// private TreeNode toAVL(TreeNode node) {
// if (node.left == null && node.right == null) {
// return node;
// }
// if (node.left != null) {
// node.left = toAVL(node.left);
// }
// if (node.right != null) {
// node.right = toAVL(node.right);
// }
// int leftLen = 0;
// int rightLen = 0;
// if (node.left != null) {
// leftLen = len(node.left);
// }
// if (node.right != null) {
// rightLen = len(node.right);
// }
// if (Math.abs(rightLen - leftLen) > 1) {
// if (rightLen > leftLen) {
// TreeNode temp = node.right;
// node.right = node.right.left;
// temp.left = node;
// return temp;
// }
// TreeNode temp = node.left;
// node.left = node.left.right;
// temp.right = node;
// return temp;
// }
// return node;
// }

// private int len(TreeNode node) {
// if (node.left == null && node.right == null) {
// return 1;
// }
// int leftLen = 0;
// int rightLen = 0;
// if (node.left != null) {
// leftLen = len(node.left);
// }
// if (node.right != null) {
// rightLen = len(node.right);
// }
// if (leftLen > rightLen) {
// return leftLen + 1;
// }
// return rightLen + 1;
// }
// }