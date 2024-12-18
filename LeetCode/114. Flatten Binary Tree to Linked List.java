
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
    private TreeNode tempNode;

    public void flatten(TreeNode root) {
        if (root == null) {
            return;
        }
        tempNode = root;
        TreeNode temp = root.right;
        if (root.left != null) {
            helper(root.left);
            root.left = null;
        }
        if (temp != null) {
            helper(temp);
        }
    }

    private void helper(TreeNode node) {
        tempNode.right = node;
        tempNode = node;
        TreeNode right = node.right;
        if (node.left != null) {
            helper(node.left);
            node.left = null;
        }
        if (right != null) {
            helper(right);
        }
    }
}