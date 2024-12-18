class Node {
    public int val;
    public Node left;
    public Node right;
    public Node next;

    public Node() {
    }

    public Node(int _val) {
        val = _val;
    }

    public Node(int _val, Node _left, Node _right, Node _next) {
        val = _val;
        left = _left;
        right = _right;
        next = _next;
    }
};

class Solution {
    public Node connect(Node root) {
        if (root == null) {
            return root;
        }
        if (root.left == null && root.right == null) {
            return root;
        }
        if (root.left != null) {
            root.left.next = root.right;
        }
        helper(root.left, root.right);
        return root;
    }
    private void helper(Node node1,Node node2){
        if (node1.left != null) {
            node1.left.next = node1.right;
        }
        if (node1.right != null) {
            node1.right.next = node2.left;
        }
        if (node2.left != null) {
            node2.left.next = node2.right;
        }
        if (node1.left != null && node1.right != null) {
            helper(node1.left, node1.right);
        }
        if (node2.left != null && node2.right != null) {
            helper(node2.left, node2.right);
        }
        if (node1.right != null && node2.left != null) {
            helper(node1.right, node2.left);
        }
    }
}