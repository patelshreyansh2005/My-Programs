package LabManual.unit2;

import java.util.Scanner;
import java.util.Stack;

public class evlOfPostfix {
    // Implement a program to convert in-fix notation to post-fix notation using
    // stack.
    public static void main(String[] args) {
        String infix = "";
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter a valid eq");
        infix = sc.nextLine();
        System.out.println(InfixToPostfix1.infixToPostfix(infix + ")"));
        sc.close();
    }
}

class InfixToPostfix1 {
    static Stack<String> s = new Stack<String>();

    static String infixToPostfix(String infix) {
        int length = 0;
        int rank = 0;
        String postfix = "";
        length = infix.length() - 1;
        int i = -1;
        String next;
        String n = "";
        String temp = "";
        s.push("(");
        while (i++ < length) {
            next = "";
            while (true) {
                n = infix.charAt(i) + "";
                try {
                    Integer.parseInt(n);
                    // System.out.println("try + "+n);
                    next += n;
                    i++;
                } catch (NumberFormatException e) {
                    System.out.println("catch + "+n);
                    break;
                }
            }
            // System.out.println("\nnext = "+next+"\n\n");
            System.out.println(next);
            if (s.empty()) {
                return "invalid";
            }
            while (G(s.lastElement()) > F(next)) {
                temp = s.pop();
                postfix += temp + " ";
                rank += R(temp);
                // System.out.println(R(temp) + " "+temp);
                if (rank < 1) {
                    return "invalid";
                }
            }
            if (G(s.lastElement()) != F(next)) {
                s.push(next);
            } else {
                s.pop();
            }
        }

        if (rank != 1 && !s.empty()) {
            return "invalid";
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