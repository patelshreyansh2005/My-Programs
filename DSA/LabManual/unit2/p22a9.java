package LabManual.unit2;

import java.util.Scanner;

public class p22a9 {
    // Write a program to read and display n numbers using an array
    public static void main(String[] args) {
        int n;
        System.out.print("Enter size of array : ");
        Scanner sc = new Scanner(System.in);
        n = sc.nextInt();
        int arr[] = new int[n];
        ArrDemo.readArr(n, arr);
        ArrDemo.printArr(arr); 
        sc.close();  
    }
}

class ArrDemo{
    static void readArr(int n,int arr[]){
        Scanner sc = new Scanner(System.in);
        for (int i = 0; i < n; i++) {
            System.out.print("Enter element " + (i+1) + " : ");
            arr[i] = sc.nextInt();
        }
        sc.close();
    }
    static void printArr(int arr[]){
        System.out.print(arr[0]);
        for (int i = 1; i < arr.length; i++) {
            System.out.print(", ");
            System.out.print(arr[i]);
        }
    }
}