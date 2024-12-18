package LabManual.unit2;

import java.util.Scanner;

public class p23b18 {
    // Write a program to delete a number from an array that is already sorted in an
    // ascending order
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int number, choice = 1;
        int arr[] = { 1, 2, 3, 4, 5, 6, 7, 8, 9 };
        System.out.print("Enter number which you want to delete : ");
        number = sc.nextInt();
        Array3.deleteNumber(arr, number);
        Array3.printArr(arr);
        while (true) {
            System.out.println("\nwant to add another number \n 1 for 'yes' 0 for 'no'");
            choice = sc.nextInt();
            if (choice == 0) {
                break;
            }
            System.out.print("Enter number which you want to delete : ");
            number = sc.nextInt();
            Array3.deleteNumber(arr, number);
            Array3.printArr(arr);
        }
        sc.close();
    }
}

class Array3 {
    static void deleteNumber(int arr[], int number) {
        int i = 0, index = -1;
        for (i = 0; i < arr.length - 1; i++) {
            if (arr[i] == number) {
                index = i;
                break;
            }
        }
        if (index != -1) {
            for (i = index; i < arr.length - 1; i++) {
                arr[i] = arr[i + 1];
            }
            arr[arr.length - 1] = 0;
        }

    }

    static void printArr(int arr[]) {
        System.out.print(arr[0]);
        for (int i = 1; i < arr.length; i++) {
            System.out.print(", ");
            System.out.print(arr[i]);
        }
    }
}
