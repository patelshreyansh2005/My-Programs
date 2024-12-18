package LabManual.unit2;

import java.util.Scanner;

public class p22a11 {
    // Write a program to calculate average of first n numbers
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n;
        System.out.print("Enter number :");
        n = sc.nextInt();
        System.out.println(Average.average(n));
        sc.close();
    }
}

class Average{
    static double average(int n){
        int sum = 0;
        int i = 1;
        for (i = 1; i <= n; i++) {
            sum += i;
        }
        i--;
        return (double)sum/i;
    }
}