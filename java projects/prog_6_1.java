import java.util.Scanner;

public class prog_6_1 {
    public static void main(String[] args) {

        Long enrolmentNo;
        String name;
        String gender;
        int marks;

        Student s1 = new Student();
        s1.display();

        Scanner sc = new Scanner(System.in);
        enrolmentNo=sc.nextLong();
    }
}

class Student {
    Long enrolmentNo;
    String name;
    String gender;
    int marks;
    static int count;

    Student() {
        enrolmentNo = 0L;
        name = "NOT DEFINE";
        gender = "NOT DEFINE";
        marks = 0;
        count++;
    }

    void display() {
        System.out.println("EnrolmentNo = " + enrolmentNo);
        System.out.println("Name = " + name);
        System.out.println("Gender = " + gender);
        System.out.println("Marks = " + marks);
    }

    Student(Long enrolmentNo, String name, String gender, int marks) {
        this.enrolmentNo = enrolmentNo;
        this.name = name;
        this.gender = gender;
        this.marks = marks;
    }
}