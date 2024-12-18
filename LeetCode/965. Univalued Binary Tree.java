import java.util.Stack;

/**
 * Definition for a binary tree node.
 * public class TreeNode {
 * int val;
 * TreeNode left;
 * TreeNode right;
 * TreeNode() {}
 * TreeNode(int val) { this.val = val; }
 * TreeNode(int val, TreeNode left, TreeNode right) {
 * this.val = val;
 * this.left = left;
 * this.right = right;
 * }
 * }
 */

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
    public boolean isUnivalTree(TreeNode root) {
        Stack<TreeNode> s = new Stack<>();
        s.add(root);
        TreeNode node;
        while (!s.isEmpty()) {
            node = s.pop();
            if (node.left != null) {
                if (node.left.val != root.val) {
                    return false;
                }
                s.add(node.left);
            }
            if (node.right != null) {
                if (node.right.val != root.val) {
                    return false;
                }
                s.add(node.right);
            }
        }
        return true;
    }
}