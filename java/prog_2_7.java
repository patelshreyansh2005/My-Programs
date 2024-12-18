import java.util.Scanner;

public class prog_2_7 {
    public static void main(String[] args) {
        System.out.println("-----2.7-----");
        Scanner sc = new Scanner(System.in);
        System.out.print("Total marks of one paper: ");
        float total = sc.nextFloat();
        if (total<0) {
            System.out.println("Invalid Total");
            System.exit(1);
        }
        System.out.print("maths marks: ");
        float maths = sc.nextFloat();
        if (maths>total || maths<0) {
            System.out.println("Invalid Marks");
            System.exit(1);
        }
        System.out.print("physics marks: ");
        float physics = sc.nextFloat();
        if (physics>total || maths<0) {
            System.out.println("Invalid Marks");
            System.exit(1);
        }
        System.out.print("chemistry marks: ");
        float chemistry = sc.nextFloat();
        if (chemistry>total || maths<0) {
            System.out.println("Invalid Marks");
            System.exit(1);
        }
        System.out.print("english marks: ");
        float english = sc.nextFloat();
        if (english>total || maths<0) {
            System.out.println("Invalid Marks");
            System.exit(1);
        }
        System.out.print("computer marks: ");
        float computer = sc.nextFloat();
        if (computer>total || maths<0) {
            System.out.println("Invalid Marks");
            System.exit(1);
        }

        float percentage = ((maths+physics+chemistry+english+computer)/(total*5))*100;
        if (percentage>70){
            System.out.println("☻==Distinction==☻");
        }
        else if (percentage>60) {
            System.out.println("☻==First Class==☻");
        }
        else if (percentage>45) {
            System.out.println("☻==Second Class==☻");
        }
        else if (percentage>35) {
            System.out.println("☻==Pass==☻");
        }
        else if (percentage>0) {
            System.out.println("☻==Fail==☻");
        }
        else {
            System.out.println("percentage is not valid");
        }
    }
}
