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
    private ArrayList<Integer> al = new ArrayList<>();
    private int temp = 0;

    public int sumNumbers(TreeNode root) {
        al.clear();
        temp = 0;
        helper(root);
        int sum = 0;
        for (Integer integer : al) {
            sum += integer;
        }
        return sum;
    }

    private void helper(TreeNode node) {
        temp *= 10;
        temp += node.val;
        if (node.left != null) {
            helper(node.left);
        }
        if (node.right != null) {
            helper(node.right);
        }
        if (node.left == null && node.right == null) {
            al.add(temp);
        }
        temp /= 10;
    }
}