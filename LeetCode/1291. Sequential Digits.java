import java.util.LinkedList;
import java.util.List;

class Solution {
    public List<Integer> sequentialDigits(int low, int high) {
        int len = 0;
        int n = low;
        List<Integer> list = new LinkedList<>();
        int[] arr = { 1, 2, 3, 4, 5, 6, 7, 8, 9 };
        while (n > 0) {
            len++;
            n /= 10;
        }
        while (n <= high && n != 123456789) {
            for (int i = 0; i <= arr.length - len; i++) {
                n = 0;
                for (int j = i; j < i + len; j++) {
                    n *= 10;
                    n += j + 1;
                }
                System.out.println(n);
                if (n <= high) {
                    if(n >= low){
                        list.add(n);
                    }
                } else {
                    break;
                }
            }
            len++;
        }
        return list;
    }
}