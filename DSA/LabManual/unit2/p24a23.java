package LabManual.unit2;

import java.util.Scanner;

public class p24a23 {
    // Create class Employee_Detail with attributes Employee_ID, Name,Designation,and Salary. Write a program to read the detail from user and print it
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int employee_ID;
        String name;
        String designation;
        int salary;
        System.out.println("Employee ID : ");
        employee_ID = sc.nextInt();
        sc.nextLine();
        System.out.println("Name : ");
        name = sc.nextLine();
        System.out.println("Designation : ");
        designation = sc.nextLine();
        System.out.println("salary : ");
        salary = sc.nextInt();
        Employee_Detail ed = new Employee_Detail();
        ed.getDetail(employee_ID, name, designation, salary);
        ed.printDetails();
        sc.close();
    }
}

class Employee_Detail {
    int employee_ID;
    String name;
    String designation;
    int salary;

    void getDetail(int employee_ID, String name, String designation, int salary) {
        this.employee_ID = employee_ID;
        this.name = name;
        this.designation = designation;
        this.salary = salary;
    }

    void printDetails() {
        System.out.println("Employee ID : " + this.employee_ID);
        System.out.println("Name : " + this.name);
        System.out.println("Designation : " + this.designation);
        System.out.println("salary : " + this.salary);
    }
}