package LabManual.unit1;

import java.util.Scanner;

public class p11b7 {
    // Write a program to find factors of a given number
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter number : ");
        System.out.println("factors : " + Factors.factors(sc.nextInt()));
        sc.close();
    }
}

class Factors{
    static String factors(int number){
        int i =0;
        String factors = "1,";
        for (i = 2; i <= number/2; i++) {
            if (number%i == 0) {
                factors+=i;
                factors+=",";
            }
        }
        factors+=number;
        return factors;
    }
}