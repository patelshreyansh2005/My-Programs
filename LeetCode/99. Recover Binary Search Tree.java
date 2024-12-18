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
    private TreeNode min, max, current;

    public void recoverTree(TreeNode root) {
        helper(root);
    }

    private void helper(TreeNode node) {
        if (node == null) {
            return;
        }
        this.current = node;
        this.min = new TreeNode(Integer.MAX_VALUE);
        this.max = new TreeNode(Integer.MIN_VALUE);
        findMax(node.left);
        findMin(node.right);
        boolean isBST = true;
        if (max.val > node.val) {
            int temp = node.val;
            node.val = max.val;
            max.val = temp;
            isBST = false;
        }
        if (min.val < node.val) {
            int temp = node.val;
            node.val = min.val;
            min.val = temp;
            isBST = false;
        }
        if (!isBST) {
            helper(node);
        }
        helper(node.left);
        helper(node.right);

    }

    private void findMax(TreeNode node) {
        if (node == null) {
            return;
        }
        if (node.val > this.current.val && node.val >= this.max.val) {
            max = node;
        }
        findMax(node.left);
        findMax(node.right);
    }

    private void findMin(TreeNode node) {
        if (node == null) {
            return;
        }
        if (node.val < this.current.val && node.val <= this.min.val) {
            min = node;
        }
        findMin(node.left);
        findMin(node.right);
    }
}