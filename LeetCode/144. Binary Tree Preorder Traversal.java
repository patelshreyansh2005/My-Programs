import java.util.LinkedList;
import java.util.List;
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
    public List<Integer> preorderTraversal(TreeNode root) {
        Stack<TreeNode> ts = new Stack<>();
        LinkedList<Integer> ans = new LinkedList<>();
        ts.add(root);
        while (!ts.empty()) {
            TreeNode temp = ts.pop();
            if (temp != null) {
                ans.add(temp.val);
                if (temp.right != null) {
                    ts.add(temp.right);
                }
                if (temp.left != null) {
                    ts.add(temp.left);
                }
            }
        }
        return ans;
    }
}