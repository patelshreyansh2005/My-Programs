package LabManual.unit2;

import java.util.Scanner;

public class p23b17 {
    // Write a program to insert a number in an array that is already sorted in an ascending order
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int number, choice = 1;
        int arr[] = {1,5,10,15,20,25,30,35,36,39,40};
        System.out.print("Enter number which you want to insert : ");
        number = sc.nextInt();
        Array2.insertNumber(arr, number);
        Array2.printArr(arr);
        while (true) {
            System.out.println("\nwant to add another number \n 1 for 'yes' 0 for 'no'");
            choice = sc.nextInt();
            if (choice == 0) {
                break;
            }
            System.out.print("Enter number which you want to insert : ");
            number = sc.nextInt();
            Array2.insertNumber(arr, number);
            Array2.printArr(arr);
        }
        sc.close();
    }
}

class Array2 {
    static void insertNumber(int arr[], int number) {
        int i = 0,index = 0;
        for (i = 0; i < arr.length-1; i++) {
            if (arr[i] > number) {
                index = i;
                break;
            }
        }
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
