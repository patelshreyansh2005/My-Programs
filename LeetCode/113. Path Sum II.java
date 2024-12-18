import java.util.ArrayList;
import java.util.List;

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
    private List<List<Integer>> al = new ArrayList<>();
    private List<Integer> temp = new ArrayList<>();
    int targetSum = 0;
    int sum = 0;

    public List<List<Integer>> pathSum(TreeNode root, int targetSum) {
        this.targetSum = targetSum;
        this.sum = 0;
        this.temp.clear();
        this.al.clear();
        if (root == null) {
            return new ArrayList<>();
        }
        helper(root);
        return this.al;
    }

    private void helper(TreeNode node) {
        sum += node.val;
        this.temp.add(node.val);
        if (sum == targetSum && node.left == null && node.right == null) {
            al.add(new ArrayList<>(temp));
        }
        if (node.left != null) {
            helper(node.left);
        }
        if (node.right != null) {
            helper(node.right);
        }
        this.temp.removeLast();
        sum -= node.val;
    }
}