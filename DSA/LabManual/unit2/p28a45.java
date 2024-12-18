package unit2;

public class p28a45 {
    // Write a sample java code to implement a node structure
    public static void main(String[] args) {
        LinkedList l1 = new LinkedList();
        l1.insord(2);
        l1.insord(0);
        l1.insord(4);
        l1.insord(3);
        l1.insord(6);
        l1.insord(1);
        l1.insord(5);
        l1.deleteLast();
        l1.display();
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

class LinkedList {
    private Node head;

    void insert(int val) {
        Node newNode = new Node(val);
        if (head == null) {
            head = newNode;
        }
        newNode.next = head;
        head = newNode;
    }

    void insend(int val) {
        Node newNode = new Node(val);
        if (head == null) {
            head = newNode;
        } else {
            Node temp = head;
            while (temp.next != null) {
                temp = temp.next;
            }
            temp.next = newNode;
        }
    }

    void insord(int val) {
        Node newNode = new Node(val);
        if (head == null) {
            head = newNode;
            return;
        }
        if (head.val > newNode.val) {
            insert(val);
            return;
        }
        Node temp = head;
        while ((temp.next != null) && (val > temp.next.val)) {
            temp = temp.next;
        }
        newNode.next = temp.next;
        temp.next = newNode;
    }

    int delete(){
        int temp;
        temp = head.val;
        head = head.next;
        return temp;
    }

    int deleteLast(){
        Node temp = head;
        while (temp.next != null) {
            temp = temp.next;
        }
        int temp2 = temp.next.val;
        temp.next = null;
        return temp2;
    }

    void display() {
        if (head == null) {
            return;
        }
        Node temp = head;
        System.out.print(temp.val);
        temp = temp.next;
        while (temp != null) {
            System.out.print(", " + temp.val);
            temp = temp.next;
        }
        System.out.println();
    }
}
