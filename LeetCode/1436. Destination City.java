import java.util.ArrayList;
import java.util.List;

class Solution {
    public String destCity(List<List<String>> paths) {
        int len = paths.size();
        ArrayList<String> al = new ArrayList<>();
        for (int i = 0; i < len; i++) {
            al.add(paths.get(i).get(0));
        }
        for (int i = 0; i < len; i++) {
            if (!al.remove(paths.get(i).get(1))) {
                return paths.get(i).get(1);
            };
        }
        return "";
    }
}