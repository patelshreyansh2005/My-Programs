package LabManual.unit2;

public class p211b53 {
    // Write a menu driven program to implement following operations on the circular
    // linked list
    public static void main(String[] args) {
        CircularLinkedList cll = new CircularLinkedList();
        cll.insertFront(0);
        cll.insertFront(2);
        cll.insertLast(3);
        cll.insertFront(4);
        cll.delete(3);
        cll.display();

    }
}

class Node {
    int val;
    Node next;

    Node(int val) {
        this.val = val;
    }
}

class CircularLinkedList {
    private Node first, last;

    public void insertFront(int val) {
        Node temp = new Node(val);
        if (first == null) {
            first = temp;
            first.next = first;
            last = first;
            return;
        }
        temp.next = first;
        last.next = temp;
        first = temp;
    }

    public void insertLast(int val) {
        Node temp = new Node(val);
        if (first == null) {
            first = temp;
            first.next = first;
            last = first;
            return;
        }
        last.next = temp;
        temp.next = first;
        last = temp;
    }

    public void delete(int val) {
        if (first == null) {
            return;
        }
        if (first.val == val) {

            if (first.next == first) {
                first = null;
                last = null;
                return;
            }

            Node temp = first;
            first = first.next;
            temp.next = null;
            last = first;
            return;
        }
        Node temp = first;
        while (temp.next != first && temp.next.val != val) {
            temp = temp.next;
        }
        Node temp2 = temp.next;
        temp.next = temp.next.next;
        temp2.next = null;
    }

    public void display() {
        if (first == null) {
            System.out.println("List is empty");
            return;
        }

        System.out.print(first.val);
        Node temp = first.next;
        while (temp != first) {
            System.out.print(", " + temp.val);
            temp = temp.next;
        }
    }
}