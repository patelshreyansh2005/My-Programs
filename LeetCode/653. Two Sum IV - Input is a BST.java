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
    public boolean findTarget(TreeNode root, int k) {
        if (root.left == null && root.right == null) {
            return false;
        }
        return helper(root, root, k);
    }

    private boolean helper(TreeNode node, TreeNode root, int k) {
        if (node.val * 2 != k && isAvailable(root, k - node.val)) {
            return true;
        }
        boolean left = false;
        boolean right = false;
        if (node.left != null) {
            left = helper(node.left, root, k);
        }
        if (node.right != null) {
            right = helper(node.right, root, k);
        }
        return left || right && node.val * 2 != k;
    }

    private boolean isAvailable(TreeNode node, int val) {
        if (node.val > val && node.left != null) {
            return isAvailable(node.left, val);
        }
        if (node.val < val && node.right != null) {
            return isAvailable(node.right, val);
        }
        return node.val == val;
    }
}