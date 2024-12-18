package LabManual.unit1;

import java.util.Scanner;

public class p11a5 {
    // Write a program to find factorial of a number. (Using Recursion)
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter number : ");
        System.out.println(Factorial.findFactorial(sc.nextInt()));
        sc.close();
    }
}

class Factorial{
    static long findFactorial(int number){
        if(number == 2){
            return 2;
        }
        return number*findFactorial(number-1);
    }
}