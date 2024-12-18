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
    public boolean isValidBST(TreeNode root) {
        if (root == null) {
            return true;
        }
        boolean ans = true;
        if (root.left != null) {
            ans = helper(root.left, root.val, true) && root.val > root.left.val && isValidBST(root.left);
        }
        if (root.right != null) {
            return ans && helper(root.right, root.val, false) && root.val < root.right.val && isValidBST(root.right);
        }
        return ans;
    }

    private boolean helper(TreeNode node, int rootVal, boolean isLeft) {
        boolean ans = true;
        if (isLeft) {
            if (node.left != null) {
                ans = helper(node.left, rootVal, isLeft) && node.val > node.left.val && (node.left.val < rootVal);
            }
            if (node.right != null) {
                return ans && helper(node.right, rootVal, isLeft) && node.val < node.right.val
                        && (node.right.val < rootVal);
            }
        } else {
            if (node.left != null) {
                ans = helper(node.left, rootVal, isLeft) && node.val > node.left.val && (node.left.val > rootVal);
            }
            if (node.right != null) {
                return ans && helper(node.right, rootVal, isLeft) && node.val < node.right.val
                        && (node.right.val > rootVal);
            }
        }
        return ans;
    }
}