package unit2;

public class p28a38 {
    // Write algorithms to perform following operations on a simple queue :
    // Insert,Delete
    public static void main(String[] args) {
        Queue q = new Queue(5);
        q.enqueue(1);
        q.enqueue(1);
        q.enqueue(2);
        q.enqueue(2);
        q.dequeue();
        q.dequeue();
        q.dequeue();
        q.dequeue();
        q.dequeue();
        q.printQueue();
    }
}

class Queue {
    private int length = 0;
    private int rear = -1, front = -1;
    int[] queue;

    Queue(int length) {
        this.length = length;
        queue = new int[length];
    }

    void enqueue(int number) {
        if (rear >= length-1) {
            System.out.println("Queue Overflow");
            return;
        }
        rear++;
        queue[rear] = number;
        if (front==-1) {
            front=0;
        }
    }

    int dequeue() {
        if (front==-1) {
            System.out.println("underflow");
            return 0;
        }
        int temp=queue[front];
        front++;
        if (front > rear) {
            front = -1;
            rear = -1;
        }
        return temp;
    }

    void printQueue() {
        if (front < 0) {
            return;
        }
        System.out.print(queue[front]);
        for (int i = front + 1; i < rear; i++) {
            System.out.print(", " + queue[i]);
        }
        System.out.println();
    }
}
