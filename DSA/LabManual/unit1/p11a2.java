package LabManual.unit1;

import java.util.Scanner;

public class p11a2 {
    // Write a program to find whether a number is odd or even
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter Number : ");
        System.out.println(EvenOdd.checkEvenOdd(sc.nextInt()));
        sc.close();
    }
}

class EvenOdd{
    static String checkEvenOdd(int number){
        if(number%2==0){
            return "Even";
        }
        return "Odd";
    }
}