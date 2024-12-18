import java.util.Scanner;

class prog_0_0 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        // Person pe = new Person();
        // Person ep = new Person();
        // Person te = new Person();
        // System.out.println("Enter Details of Person");
        // pe.getDetails();
        // System.out.println("Enter Details of Employee");
        // ep.getDetails();
        // System.out.println("Enter Details of Techer");
        // te.getDetails();

        int n, i;
        System.out.print("Enter number of teacher: ");
        n = sc.nextInt();

        Teacher[] te = new Teacher[n];

        for(i=0;i<n;i++){
            te[i]=new Teacher();
            System.out.println("Enter Details of Techer: "+(i+1));
            te[i].getDetails();
        }

        for(i=0;i<n;i++){
            te[i].printDetails();
        }

        sc.close();
    }
}

class Person {
    int pID;
    String name;
    int age;
    Scanner sc = new Scanner(System.in);

    void getDetails() {
        System.out.println("Enter pID: ");
        pID = sc.nextInt();
        System.out.println("Enter name: ");
        name = sc.next();
        System.out.println("Enter age: ");
        age = sc.nextInt();
    }

    void printDetails() {
        System.out.println("pID: " + pID);
        System.out.println("Name: " + name);
        System.out.println("Age: " + age);
    }
}

class Employee extends Person {
    int eID;
    int salary;
    String desighation;
    Scanner sc = new Scanner(System.in);

    void getDetails() {
        super.getDetails();
        System.out.println("Enter eID: ");
        eID = sc.nextInt();
        System.out.println("Enter salary: ");
        salary = sc.nextInt();
        System.out.println("Enter desighation: ");
        desighation = sc.next();
    }

    void printDetails() {
        super.printDetails();
        System.out.println("eID: " + eID);
        System.out.println("salary: " + salary);
        System.out.println("Age: " + desighation);
    }
}

class Teacher extends Person {
    int tID;
    String sub;
    int exp;
    Scanner sc = new Scanner(System.in);

    void getDetails() {
        super.getDetails();
        System.out.println("Enter tID: ");
        tID = sc.nextInt();
        System.out.println("Enter sub: ");
        sub = sc.next();
        System.out.println("Enter exp: ");
        exp = sc.nextInt();
    }

    void printDetails() {
        super.printDetails();
        System.out.println("tID: " + tID);
        System.out.println("sub: " + sub);
        System.out.println("exp: " + exp);
    }
}