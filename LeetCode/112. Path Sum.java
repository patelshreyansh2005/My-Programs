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
    private int targetSum = 0;
    private boolean hasPathSum = false;
    private int tempSum = 0;

    public boolean hasPathSum(TreeNode root, int targetSum) {
        if (root == null) {
            return false;
        }
        hasPathSum = false;
        this.targetSum = targetSum;
        traverse(root);
        targetSum = 0;
        tempSum = 0;
        return hasPathSum;
    }

    private void traverse(TreeNode node) {
        tempSum += node.val;
        if (node.left != null) {
            traverse(node.left);
        }
        if (node.right != null) {
            traverse(node.right);
        }
        if (node.left == null && node.right == null) {
            if (targetSum == tempSum) {
                hasPathSum = true;
                return;
            }
        }
        tempSum -= node.val;
    }
}