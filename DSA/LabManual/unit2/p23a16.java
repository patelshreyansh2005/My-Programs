package LabManual.unit2;

import java.util.Scanner;

public class p23a16 {
    // 16. Write a program to delete a number from a given location in an array.
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int index, choice = 1;
        int arr[] = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 };
        System.out.print("Enter index where you want to delete an element : ");
        index = sc.nextInt();
        Array.deleteNumber(arr, index);
        Array.printArr(arr);
        while (true) {
            System.out.println("\nwant to delete another number \n 1 for 'yes' 0 for 'no'");
            choice = sc.nextInt();
            if (choice == 0) {
                break;
            }
            System.out.print("Enter index where you want to delete an element : ");
            index = sc.nextInt();
            Array.deleteNumber(arr, index);
            Array.printArr(arr);
        }
        sc.close();
    }
}

class Array {
    static void deleteNumber(int arr[], int index) {
        int i = 0;
        for (i = index; i < arr.length - 1; i++) {
            arr[i] = arr[i + 1];
        }
        arr[arr.length-1] = 0;
    }

    static void printArr(int arr[]) {
        System.out.print(arr[0]);
        for (int i = 1; i < arr.length; i++) {
            System.out.print(", ");
            System.out.print(arr[i]);
        }
    }
}
