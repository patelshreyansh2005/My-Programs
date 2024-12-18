import java.util.List;
import java.util.LinkedList;

class Solution {
    public List<String> fizzBuzz(int n) {
        List<String> ll = new LinkedList<>();
        String fizz = "Fizz", buzz = "Buzz", fizzbuzz = "FizzBuzz";
        for (int i = 1; i <= n; i++) {
            if (i % 3 == 0 && i % 5 == 0) {
                ll.add(fizzbuzz);
            } else if (i % 3 == 0) {
                ll.add(fizz);
            } else if (i % 5 == 0) {
                ll.add(buzz);
            } else {
                ll.add(i + "");
            }
        }
        return ll;
    }
}