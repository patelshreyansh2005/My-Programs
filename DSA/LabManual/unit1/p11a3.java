package LabManual.unit1;

import java.util.Scanner;

public class p11a3 {
    // Write a program to determine whether the entered character is vowel or not
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter Character : ");
        System.out.println(VowelConsonent.checkVoval(sc.next().charAt(0)));
        sc.close();
    }
}

class VowelConsonent{
    static String checkVoval(char ch){
        if (ch == 'a'|| ch =='e' || ch =='i' || ch =='o' || ch =='u' || ch == 'A'|| ch =='E' || ch =='I' || ch =='O' || ch =='U') {
            return "Voval";
        }
        return "Consonent";
    }
}