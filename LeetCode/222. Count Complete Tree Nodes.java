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
    public int countNodes(TreeNode root) {
        if(root == null){
            return 0;
        }
        Stack<TreeNode> s = new Stack<>();
        TreeNode node = null;
        int numberOfNodes = 0;
        s.add(root);
        while (!s.isEmpty()) {
            node = s.pop();
            numberOfNodes++;
            if (node.left != null) {
                s.add(node.left);
            }
            if (node.right != null) {
                s.add(node.right);
            }
        }
        return numberOfNodes;
    }
}