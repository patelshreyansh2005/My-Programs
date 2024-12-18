import java.util.Scanner;
import java.util.Stack;

public class p25b30 {

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
        int a = 0,b = 0;

        for (int i = 0; i < input.length(); i++) {
            String inp = input.charAt(i)+"";
            if (!(inp.equals("a") || inp.equals("b"))) {
                return "invalid string";
            }
            if (inp.equals("a")) {
                a++;
            }
            if (inp.equals("b")) {
                b++;
            }
            s1.push(inp);
            System.out.println(s1.peek());
        }

        if (a == b) {
            return "valid string";
        }
        return "invalid string";
    }
}
