package LabManual.unit2;

import java.util.Scanner;

public class p22a10 {
    // Write a program to calculate sum of numbers from m to n
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int m,n;
        System.out.print("Enter initail : ");
        m = sc.nextInt();
        System.out.print("Enter final : ");
        n = sc.nextInt();
        System.out.println(Sum.sum(m, n));
        sc.close();
    }
}

class Sum{
    static int sum(int m,int n){
        int ans = 0;
        for (; m <= n; m++) {
            ans += m;
        }
        return ans;
    }
}