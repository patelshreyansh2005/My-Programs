package LabManual.unit2;

import java.util.Scanner;

public class p23a15 {
    // 15. Write a program to insert a number at a given location in an array
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n, number, index, choice = 1;
        System.out.print("Enter length of array : ");
        n = sc.nextInt();
        int arr[] = new int[n];
        System.out.print("Enter index where you want to insert an element : ");
        index = sc.nextInt();
        System.out.print("Enter number which you want to insert : ");
        number = sc.nextInt();
        ArrDemo.insertNumber(arr, index, number);
        ArrDemo.printArr(arr);
        while (true) {
            System.out.println("\nwant to add another number \n 1 for 'yes' 0 for 'no'");
            choice = sc.nextInt();
            if (choice == 0) {
                break;
            }
            System.out.print("Enter index where you want to insert an element : ");
            index = sc.nextInt();
            System.out.print("Enter number which you want to insert : ");
            number = sc.nextInt();
            ArrDemo.insertNumber(arr, index, number);
            ArrDemo.printArr(arr);
        }
        sc.close();
    }
}

class ArrDemo {
    static void insertNumber(int arr[], int index, int number) {
        int i = 0;
        for (i = arr.length - 1; i > index; i--) {
            arr[i] = arr[i - 1];
        }
        arr[index] = number;
    }

    static void printArr(int arr[]) {
        System.out.print(arr[0]);
        for (int i = 1; i < arr.length; i++) {
            System.out.print(", ");
            System.out.print(arr[i]);
        }
    }
}
