package unit2;

import java.util.LinkedList;

public class p211b51 {
    // Write a program to implement queue using singly linked list.
    public static void main(String[] args) {
        QueueByLinkedList qbl = new QueueByLinkedList();
        qbl.enqueue(0);
        qbl.display();
        qbl.enqueue(1);
        qbl.display();
        qbl.dequeue();
        qbl.display();
        qbl.enqueue(2);
        qbl.display();
        qbl.dequeue();
        qbl.display();
        qbl.enqueue(3);
        qbl.display();
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

class QueueByLinkedList {
    private Node front;
    public void enqueue(int number) {
        Node newNode = new Node(number);
        if (front == null) {
            front = newNode;
        } else {
            Node temp = front;
            while (temp.next != null) {
                temp = temp.next;
            }
            temp.next = newNode;
        }
    }

    public int dequeue() {
        int temp;
        temp = front.val;
        front = front.next;
        return temp;
    }

    public void display() {
        if (front == null) {
            return;
        }
        Node temp = front;
        System.out.print(temp.val);
        temp = temp.next;
        while (temp != null) {
            System.out.print(", " + temp.val);
            temp = temp.next;
        }
        System.out.println();
    }
}

