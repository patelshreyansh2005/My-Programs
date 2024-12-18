package LabManual.unit2;

import java.util.Scanner;

public class p24b24 {
    // Create array of object of class Student_Detail with attributes
    // Enrollment_No,Name, Semester, CPI for 5 students, scan their information and
    // print it
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int Enrollment_No;
        String name;
        float CPI;
        int Semester;
        Student_Detail ed[] = new Student_Detail[5];
        for (int i = 0; i < 5; i++) {
            ed[i] = new Student_Detail();
            System.out.println("Employee ID : ");
            Enrollment_No = sc.nextInt();
            sc.nextLine();
            System.out.println("Name : ");
            name = sc.nextLine();
            System.out.println("CPI : ");
            CPI = sc.nextInt();
            System.out.println("Semester : ");
            Semester = sc.nextInt();
            ed[i].getDetail(Enrollment_No, name, CPI, Semester);
        }
        for (int i = 0; i < 5; i++) {
            ed[i].printDetails();
        }
        sc.close();
    }
}

class Student_Detail {
    int Enrollment_No;
    String name;
    float CPI;
    int Semester;

    void getDetail(int Enrollment_No, String name, float CPI, int Semester) {
        this.Enrollment_No = Enrollment_No;
        this.name = name;
        this.CPI = CPI;
        this.Semester = Semester;
    }

    void printDetails() {
        System.out.println("Employee ID : " + this.Enrollment_No);
        System.out.println("Name : " + this.name);
        System.out.println("CPI : " + this.CPI);
        System.out.println("Semester : " + this.Semester);
    }
}