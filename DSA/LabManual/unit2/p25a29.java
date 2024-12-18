import java.util.Scanner;
import java.util.Stack;

public class p25a29 {
    // 29. How stack can be used to recognize strings aca, bcb, abcba, abbcbba?
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String input = "";
        System.out.print("Enter a string : ");
        input = sc.nextLine();
        System.out.println(Recognize.recognize(input));
        sc.close();
    }
}

class Recognize {
    static String recognize(String input) {
        Stack<String> s1 = new Stack<String>();

        for (int i = 0; i < input.length(); i++) {
            String inp = input.charAt(i)+"";
            if (!(inp.equals("a") || inp.equals("b")|| inp.equals("c"))) {
                return "invalid string";
            }
            s1.push(inp);
        }

        for (int i = 0; i < input.length(); i++) {
            if (!s1.pop().equals(input.charAt(i)+"")) {
                return "invalid string";
            }
        }
        return "valid string";
    }
}