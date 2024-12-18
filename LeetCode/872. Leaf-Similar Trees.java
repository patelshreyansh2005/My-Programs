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
    public boolean leafSimilar(TreeNode root1, TreeNode root2) {
        int[] array1 = new int[200];
        int i = 0;
        Stack<TreeNode> s = new Stack<>();
        TreeNode node;
        s.add(root1);
        while (!s.isEmpty()) {
            node = s.pop();
            if (node.right != null) {
                s.add(node.right);
            }
            if (node.left != null) {
                s.add(node.left);
            }
            if (node.left == null && node.right == null) {
                array1[i++] = node.val;
            }
        }
        s.add(root2);
        i = 0;
        while (!s.isEmpty()) {
            node = s.pop();
            if (node.right != null) {
                s.add(node.right);
            }
            if (node.left != null) {
                s.add(node.left);
            }
            if (node.left == null && node.right == null) {
                if (!(array1[i] == node.val)) {
                    return false;
                }
                i++;
            }
        }
        if (i != 200 && array1[i] != 0) {
            return false;
        }
        return true;
    }
}