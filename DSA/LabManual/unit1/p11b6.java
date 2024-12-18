package LabManual.unit1;

import java.math.BigInteger;
import java.util.Scanner;

public class p11b6 {
    // Write a program to find power of a number using loop
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter base and power : ");
        BigInteger base;
        int power=0;
        base = new BigInteger(sc.nextLine());
        power = sc.nextInt();
        System.out.println(Power.power(base, power)); 
        sc.close();  
    }
}

class Power{
    static String power(BigInteger base,int power){
        BigInteger ans = new BigInteger("1");
        if (base == new BigInteger("0")) {
            return "0";
        }
        while (power != 0) {
            // ans = ans*=base;
            ans = ans.multiply(base);
            power--;
        }
        return ans.toString();
    }
}