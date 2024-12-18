import java.util.Scanner;

public class prog_2_6 {
    public static void main(String[] args){
        System.out.println("-----2.6-----");
        Scanner sc = new Scanner(System.in);
        int a,b,c;
        System.out.print("Enter First Number : ");
        a=sc.nextInt();
        System.out.print("Enter Second Number : ");
        b= sc.nextInt();
        System.out.print("Enter Third Number : ");
        c= sc.nextInt();
        if (a>b){
            if (a>c){
                System.out.println(a+" is greater");
            }
            else {
                System.out.println(c+" is greater");
            }
        }
        else {
            if (b>c) {
                System.out.println(b + " is greater");
            }
            else {
                System.out.println(c+" is greater");
            }
        }
    }
}
