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
    private int minLen = -1;
    private int newLen = 0;
    public int minDepth(TreeNode root) {
        if(root == null){
            return 0;
        }
        traverse(root);
        int minimumDepth = minLen;
        minLen = -1;
        newLen = 0;
        return minimumDepth;
    }
    private void traverse(TreeNode node){
        newLen++;
        if (node.left != null) {
            traverse(node.left);
        }
        if (node.right != null) {
            traverse(node.right);
        }
        if (node.left == null && node.right == null) {
            if (minLen == -1 || minLen > newLen) {
                minLen = newLen;
            }
        }
        newLen--;
    }
}
