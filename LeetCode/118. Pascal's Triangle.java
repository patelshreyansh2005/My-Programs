import java.util.ArrayList;
import java.util.List;

class Solution {
    public List<List<Integer>> generate(int numRows) {
        List<List<Integer>> ans = new ArrayList<>();
        List<Integer> temp1 = new ArrayList<>();
        List<Integer> temp2 = new ArrayList<>();
        temp1.add(1);
        ans.add(temp1);
        if (numRows == 1) {
            return ans;
        }
        temp1 = new ArrayList<>();
        temp1.add(1);
        temp1.add(1);
        ans.add(temp1);
        if (numRows == 2) {
            return ans;
        }
        for (int i = 1; i < numRows - 1; i++) {
            temp1 = new ArrayList<>();
            temp1.add(1);
            temp2 = ans.get(i);
            for (int j = 0; j < i; j++) {
                temp1.add(temp2.get(j) + temp2.get(j + 1));
            }
            temp1.add(1);
            ans.add(temp1);
        }
        return ans;
    }
}