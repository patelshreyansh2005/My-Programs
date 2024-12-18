package LabManual.unit2;

import java.util.Scanner;

public class p22b14 {
    // Read n numbers in an array then read two different numbers, replace 1st number with 2nd number in an array and print its index and final array
    public static void main(String[] args) {
        int n, a = 2, b = 9;
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter length of array : ");
        n = sc.nextInt();
        int arr[] = new int[n];
        System.out.print("which number you want to replace : ");
        a = sc.nextInt();
        System.out.print("Enter new number : ");
        b = sc.nextInt();
        ArrDemo.readArr(n, arr);
        ArrDemo.replace(arr, a, b);
        sc.close();
    }
}

class ArrDemo {
    static void readArr(int n, int arr[]) {
        Scanner sc = new Scanner(System.in);
        for (int i = 0; i < n; i++) {
            System.out.print("Enter element " + (i + 1) + " : ");
            arr[i] = sc.nextInt();
        }
        sc.close();
    }

    static void printArr(int arr[]) {
        System.out.print(arr[0]);
        for (int i = 1; i < arr.length; i++) {
            System.out.print(", ");
            System.out.print(arr[i]);
        }
    }

    static void replace(int arr[], int a, int b) {
        String index = "";
        for (int i = 0; i < arr.length; i++) {
            if (arr[i] == a) {
                arr[i] = b;
                index += i;
                index += ", ";
            }
        }
        System.out.println(index);
        printArr(arr);
    }
}