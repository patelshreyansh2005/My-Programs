import java.util.ArrayList;
import java.util.List;

class Node {
    public int val;
    public List<Node> children;

    public Node() {
    }

    public Node(int _val) {
        val = _val;
    }

    public Node(int _val, List<Node> _children) {
        val = _val;
        children = _children;
    }
};

class Solution {
    List<Integer> list = new ArrayList<Integer>();

    public List<Integer> postorder(Node root) {
        list.clear();
        if (root == null) {
            return list;
        }
        helper(root);
        return list;
    }

    private void helper(Node node) {
        for (Node n : node.children) {
            helper(n);
        }
        list.add(node.val);
    }
}