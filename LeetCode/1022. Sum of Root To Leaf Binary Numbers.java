import java.util.ArrayList;

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
    private ArrayList<String> al = new ArrayList<String>();

    public int sumRootToLeaf(TreeNode root) {
        al.clear();
        helper(root, "");
        int ans = 0;
        for (String string : al) {
            ans += Integer.parseInt(string, 2);
        }
        return ans;
    }

    private void helper(TreeNode node, String num) {
        if (node.left == null && node.right == null) {
            al.add(num + node.val);
            return;
        }
        if (node.left != null) {
            helper(node.left, num + node.val);
        }
        if (node.right != null) {
            helper(node.right, num + node.val);
        }
    }
}