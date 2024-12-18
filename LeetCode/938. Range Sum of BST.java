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
    public int rangeSumBST(TreeNode root, int low, int high) {
        Stack<TreeNode> s = new Stack<>();
        int sum = 0;
        s.add(root);
        TreeNode node;
        while (!s.isEmpty()) {
            node = s.pop();
            if (node.left != null) {
                s.add(node.left);
            }
            if (node.right != null) {
                s.add(node.right);
            }
            if (node.val >= low && node.val <= high) {
                sum += node.val;
            }
        }
        return sum;
    }
}