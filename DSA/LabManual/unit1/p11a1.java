package LabManual.unit1;

import java.util.*;

class p11a1 {
    // Write a program to calculate area of a Circle
    public static void main(String[] args) {
        System.out.print("Enter Radias : ");
        Scanner sc = new Scanner(System.in);
        System.out.print("Area = " + Area.areaOfCircle(sc.nextDouble()));
        sc.close();   
    }
}

class Area{
    static double areaOfCircle(Double r){
        return  r*r*Math.PI;
    }
}
