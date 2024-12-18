package LabManual.unit1;

import java.util.Scanner;

public class p11a4 {
    // Write a program to find factorial of a number. (Using Loop)
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter number : ");
        System.out.println(Factorial.findFactorial(sc.nextInt()));
        sc.close();
    }
}

class Factorial{
    static long findFactorial(int number){
        long ans = 1;
        for (int i = number; i > 1; i--) {
            ans *= i;
        }
        return ans;
    }
}
