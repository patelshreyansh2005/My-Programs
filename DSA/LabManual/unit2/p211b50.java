package unit2;

public class p211b50 {
    // Write a program to implement stack using singly linked list
    public static void main(String[] args) {
        StackByLinkedList sbl = new StackByLinkedList();
        sbl.push(0);
        sbl.display();
        sbl.push(1);
        sbl.display();
        sbl.push(2);
        sbl.display();
        sbl.push(3);
        sbl.display();
        sbl.pop();
        sbl.display();
        sbl.pop();
        sbl.display();
    }
}

class Node {
    int val;
    Node next;

    Node(int val) {
        this.val = val;
        this.next = null;
    }
}

class StackByLinkedList {
    private Node top;

    public void push(int number) {
        Node temp = new Node(number);
        if (top == null) {
            top = temp;
            return;
        }
        temp.next = top;
        top = temp;
    }

    public int pop() {
        int temp;
        temp = top.val;
        top = top.next;
        return temp;
    }

    public void display() {
        if (top == null) {
            return;
        }
        Node temp = top;
        System.out.print(temp.val);
        temp = temp.next;
        while (temp != null) {
            System.out.print(", " + temp.val);
            temp = temp.next;
        }
        System.out.println();
    }
}
