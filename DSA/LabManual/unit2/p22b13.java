package LabManual.unit2;

import java.util.Scanner;

public class p22b13 {
    // Write a program to find whether the array contains a duplicate number or not
    public static void main(String[] args) {
        int n;
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter length of array : ");
        n = sc.nextInt();
        int arr[] = new int[n];
        ArrDemo.readArr(n, arr);
        System.out.println(FindDuplicate.findDuplicate(arr));
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

class FindDuplicate{
    static String findDuplicate(int arr[]){
        boolean isDuplicate = false;
        for (int i = 0; i < arr.length; i++) {
            for (int j = 0; j < arr.length; j++) {
                if (arr[i]==arr[j] && i != j) {
                    isDuplicate = true;
                    break;
                }
            }
            if (isDuplicate) {
                break;
            }
        }
        if (isDuplicate) {
            return "Array has Duplicate Elements";
        }
        return "Array has No Duplicate Elements";
    }
}