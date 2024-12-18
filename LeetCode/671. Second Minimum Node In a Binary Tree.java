import java.util.LinkedList;
import java.util.Queue;

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
    public int findSecondMinimumValue(TreeNode root) {
        if (root.left == null || root.right == null) {
            return -1;
        }
        Queue<TreeNode> q = new LinkedList<>();
        TreeNode node;
        int min = Integer.MAX_VALUE;
        int secMin = 0;
        q.add(root);
        while (!q.isEmpty()) {
            node = q.poll();
            if (node.left != null) {
                q.add(node.left);
            }
            if (node.right != null) {
                q.add(node.right);
            }
            if (node.val < min) {
                min = node.val;
            }
        }
        q.add(root);
        while (!q.isEmpty()) {
            node = q.poll();
            if (node.left != null) {
                q.add(node.left);
            }
            if (node.right != null) {
                q.add(node.right);
            }
            if ((node.val < secMin || secMin == 0) && node.val > min) {
                secMin = node.val;
            }
        }
        if (secMin == 0) {
            return -1;
        }
        return secMin;
    }
}