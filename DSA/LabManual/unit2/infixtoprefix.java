package LabManual.unit2;
import java.util.Stack;
public class infixtoprefix {
    // Implement a program to convert in-fix notation to post-fix notation using
    // stack
    public static void main(String[] args) {
        // System.out.println(InfixToPrifix.infixtoprefix("a+c+b)"));
        System.out.println(InfixToPostfix.infixToPostfix("a+b)"));
    }
}

class InfixToPrifix {
    static String infixtoprefix(String infix){
        String input = "";
        for (int i = infix.length() - 1; i > 0; i--) {
            if (infix.charAt(i) == ')') {
                input += '(';
            } else if (infix.charAt(i) == '(') {
                input += ')';
            } else {
                input += infix.charAt(i);
            }
        }

        Stack<String> s = new Stack<String>();
        int length = 0;
        int rank = 0;
        String postfix = "";
        length = input.length() - 1;
        int i = -1;
        String next = "";
        String temp = "";
        s.clear();
        s.push("(");
        while (i++ < length) {
            next = input.charAt(i) + "";
            if (s.empty()) {
                return "invalid stack is empty";
            }
            while (G(s.lastElement()) > F(next)) {
                temp = s.pop();
                postfix += temp;
                rank += R(temp);
                if (rank < 1) {
                    return "invalid rank";
                }
            }
            if (G(s.lastElement()) != F(next)) {
                s.push(next);
            } else {
                s.pop();
            }
        }

        if (rank != 1 && !s.empty()) {
            System.out.println("rank = " + rank + "stack = "+(s.empty()));
            return "invalid rank or stack is not empty";
        }
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