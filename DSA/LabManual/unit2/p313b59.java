package unit2;

public class p313b59 {
    // Implement a menu based Binary search tree for following operation 1.Insert a
    // node, 2.Delete a node, 3.Preorder Traversal, 4.Post order Traversal, 5.In
    // order Traversal
    public static void main(String[] args) {
        
    }
}

class TreeNode {
    int val;
    TreeNode left, right;

    TreeNode(int val) {
        this.val = val;
    }

    TreeNode() {
        this.val = 0;
        this.left = null;
        this.right = null;
    }
}

class Tree {
    private TreeNode root;

    public void insert(int val) {
        TreeNode node = new TreeNode(val);
        if (root == null) {
            root = node;
            return;
        }
        TreeNode temp = root;
        while (true) {
            if (val > temp.val) {
                if (temp.right == null) {
                    temp.right = node;
                    break;
                }
                temp = temp.right;
            } else {
                if (temp.left == null) {
                    temp.left = node;
                    break;
                }
                temp = temp.left;
            }
        }
    }

    public String preorder(TreeNode node) {
        StringBuilder result = new StringBuilder();
        preorderHelper(node, result);
        return result.toString();
    }

    private void preorderHelper(TreeNode node, StringBuilder result) {
        if (node == null) {
            return;
        }

        result.append(node.val);
        preorderHelper(node.left, result);
        preorderHelper(node.right, result);
    }

    public String inorder(TreeNode node) {
        StringBuilder result = new StringBuilder();
        inorderHelper(node, result);
        return result.toString();
    }

    private void inorderHelper(TreeNode node, StringBuilder result) {
        if (node == null) {
            return;
        }

        inorderHelper(node.left, result);
        result.append(node.val);
        inorderHelper(node.right, result);
    }

    public String postorder(TreeNode node) {
        StringBuilder result = new StringBuilder();
        postorderHelper(node, result);
        return result.toString();
    }

    private void postorderHelper(TreeNode node, StringBuilder result) {
        if (node == null) {
            return;
        }

        postorderHelper(node.left, result);
        postorderHelper(node.right, result);
        result.append(node.val);
    }

    public int delete(int val) {
        TreeNode node = findNode(root, val);
        if (node == null) {
            return 0;
        }
        

        return 0;
    }

    private TreeNode findNode(TreeNode node, int val) {
        if (node == null) {
            return null;
        }
        TreeNode temp = node;
        TreeNode pre = null;
        while (temp != null) {
            pre = temp;
            if (temp.val > val) {
                temp = temp.left;
            } else if (temp.val < val) {
                temp = temp.right;
            } else {
                break;
            }
        }
        return pre;
    }
}