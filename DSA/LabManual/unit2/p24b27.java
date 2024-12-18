package LabManual.unit2;

import java.util.Scanner;

public class p24b27 {
    // Write a menu driven program to implement following operations on the Stack
    // created using an Array
    // PUSH
    // POP
    // DISPLAY
    // PEEP
    // CHANGE
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int temp = 5, number, index = 0;
        System.out.println("Enter size of stack : ");
        temp = sc.nextInt();
        Stack s = new Stack(temp);
        while (temp != 0) {
            System.out.println("Enter\n 1 for push\n 2 for pop\n 3 for peep\n 4 for change\n 5 for display");
            temp = sc.nextInt();
            if (temp == 1) {
                System.out.print("Enter number : ");
                number = sc.nextInt();
                s.push(number);
            } else if (temp == 2) {
                System.out.print(s.pop());
            } else if (temp == 3) {
                System.out.print(s.peep());
            } else if (temp == 4) {
                System.out.print("Enter index : ");
                index = sc.nextInt();
                System.out.print("Enter number : ");
                number = sc.nextInt();
                s.change(index, number);
            } else {
                s.display();
            }
        }
        sc.close();
    }
}

class Stack {
    int top = 0;
    int length = 5;

    Stack(int length) {
        this.length = length;
    }

    int stack[] = new int[length];

    void push(int number) {
        if (top >= length) {
            System.out.println("Stack Overflow");
            return;
        }
        stack[top] = number;
        top++;
    }

    int pop() {
        if (top >= length) {
            System.out.println("Stack Underflow");
            return 0;
        }
        top--;
        return stack[top + 1];
    }

    void display() {
        System.out.println(stack[0]);
        for (int i = 1; i <= this.top; i++) {
            System.out.print(", " + stack[i]);
        }
    }

    int peep() {
        if (top >= length) {
            System.out.println("Stack Underflow");
            return 0;
        }
        return stack[top];
    }

    void change(int index, int number) {
        if (index > top) {
            System.out.println("Stack Overflow");
            return;
        }
        if (index < 0) {
            System.out.println("Stack Underflow");
            return;
        }
        stack[index] = number;
    }
}
