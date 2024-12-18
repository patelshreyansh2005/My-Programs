package LabManual.unit2;

import java.util.Scanner;

public class p24a22 {
    static int a,b;
    //  Write a program to swap two numbers using user-defines method
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter number a : ");
        a = sc.nextInt();
        System.out.print("Enter number b : ");
        b = sc.nextInt();
        sc.close();
        Mynumber.swap(a,b);

    }
}

class Mynumber{
    static void swap(int a,int b){
        int temp = a;
        a = b;
        b = temp;
        System.out.print("number a = "+a);
        System.out.print("number b = "+b);
    }
}