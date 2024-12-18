package LabManual.unit2;

import java.util.Scanner;

public class p22a12 {
    // Write a program to find position of the smallest number from given n numbers
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n;
        System.out.print("Enter length of array : ");
        n = sc.nextInt();
        int arr[] = new int[n];
        ArrDemo.readArr(n, arr);
        System.out.println(FindSmallest.findSmallest(arr));
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
}

class FindSmallest{
    static int findSmallest(int arr[]){
        int i = 0,min = arr[0],minindex = 0;
        for (i = 0; i < arr.length; i++) {
            if (arr[i] < min) {
                min = arr[i];
                minindex = i;
            }
        }
        return minindex;
    }
}