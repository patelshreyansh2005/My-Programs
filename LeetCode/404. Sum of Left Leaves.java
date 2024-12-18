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
    public int sumOfLeftLeaves(TreeNode root) {
        Stack<TreeNode> s = new Stack<>();
        TreeNode node;
        int sum = 0;
        s.push(root);
        while (!s.empty()) {
            node = s.pop();
            if (node.left != null) {
                s.push(node.left);
                if (node.left.left == null && node.left.right == null) {
                    sum += node.left.val;
                    s.pop();
                }
            }
            if (node.right != null) {
                s.push(node.right);
            }
        }
        return sum;
    }
}