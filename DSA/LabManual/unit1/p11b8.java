package LabManual.unit1;

import java.util.Scanner;

public class p11b8 {
    // Write a program to check whether a number is prime or not
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter Number : ");
        System.out.println(Prime.prime(sc.nextInt()));
        sc.close();
    }
}

class Prime{
    static String prime(int number){
        for (int i = 2; i <= number/2; i++) {
            if(number%i == 0){
                return "Not Prime";
            }
        }
        return "Prime";
    }
}