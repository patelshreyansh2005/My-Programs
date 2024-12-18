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
    private int maxDepth = 0;

    public int maxDepth(TreeNode root) {
        if (root == null) {
            return 0;
        }
        calculateDepth(root, 0);
        return maxDepth + 1;
    }

    private void calculateDepth(TreeNode node, int currentDepth) {
        if (node == null) {
            return;
        }
        if (currentDepth > maxDepth) {
            maxDepth = currentDepth;
        }
        calculateDepth(node.left, currentDepth + 1);
        calculateDepth(node.right, currentDepth + 1);
    }
}