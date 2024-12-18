import java.util.Stack;

public class infixtoprefix {
    // Implement a program to convert in-fix notation to post-fix notation using
    // stack
    public static void main(String[] args) {
        System.out.println(InfixToPrifix.infixtoprefix("a+b+c+d+e+f+g+h)"));
        System.out.println("-----------------------------------------");
        // System.out.println(InfixToPostfix.infixToPostfix("a+b)"));
    }
}

class InfixToPrifix {
    static String infixtoprefix(String infix){
        String temp = "";
        String output = "";
        for (int i = infix.length() - 1; i >= 0; i--) {
            if (infix.charAt(i) == ')') {
                temp += '(';
            } else if (infix.charAt(i) == '(') {
                temp += ')';
            } else {
                temp += infix.charAt(i);
            }
        }
        temp = InfixToPostfix.infixToPostfix(temp);
        for (int i = temp.length() - 1; i >= 0; i--) {
                output += infix.charAt(i);
        }
        return output;
    }
}

class InfixToPostfix {
    static Stack<String> s = new Stack<String>();

    static String infixToPostfix(String infix) {
        s.clear();
        System.out.println(infix);
        int length = 0;
        int rank = 0;
        String postfix = "";
        length = infix.length() - 1;
        int i = -1;
        String next = "";
        String temp = "";
        s.push("(");
        while (i++ < length) {
            next = infix.charAt(i) + "";
            if (s.empty()) {
                return "invalid 1";
            }
            while (G(s.lastElement()) > F(next)) {
                temp = s.pop();
                postfix += temp;
                rank += R(temp);
                if (rank < 1) {
                    return "invalid 2";
                }
            }
            if (G(s.lastElement()) != F(next)) {
                s.push(next);
            } else {
                s.pop();
            }
        }

        if (rank != 1 && !s.empty()) {
            return "invalid 3";
        }
        length = 0;
        rank = 0;
        return postfix;
    }

    static int F(String next) {
        if (next.equals("+") || next.equals("-")) {
            return 1;
        } else if (next.equals("*") || next.equals("/")) {
            return 3;
        } else if (next.equals("^") || next.equals("$")) {
            return 6;
        } else if (next.equals("(")) {
            return 9;
        } else if (next.equals(")")) {
            return 0;
        } else {
            return 7;
        }
    }

    static int G(String next) {
        if (next.equals("+") || next.equals("-")) {
            return 2;
        } else if (next.equals("*") || next.equals("/")) {
            return 4;
        } else if (next.equals("^") || next.equals("$")) {
            return 5;
        } else if (next.equals("(")) {
            return 0;
        } else {
            return 8;
        }
    }

    static int R(String next) {
        if (next == "+" || next == "-" || next == "*" || next == "/" || next == "^" || next == "$") {
            return -1;
        } else {
            return 1;
        }
    }
}