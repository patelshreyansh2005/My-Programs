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
    boolean isSameTree = true;

    public boolean isSameTree(TreeNode p, TreeNode q) {
        if (!isSameTree) {
            return false;
        }
        if ((p == null && q != null) || (p != null && q == null)) {
            return false;
        }
        if (p == null || q == null) {
            return isSameTree;
        }
        isSameTree = isSameTree(p.left, q.left);
        if (p.val != q.val) {
            isSameTree = false;
        }
        isSameTree = isSameTree(p.right, q.right);
        return isSameTree;
    }
}