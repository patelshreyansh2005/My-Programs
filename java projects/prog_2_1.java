import java.util.Scanner;
public class prog_2_1 {
    public static void main(String[] args){
        System.out.println("-----2.1-----");
        System.out.print("Enter value in meter : ");
        Scanner sc=new Scanner(System.in);
//        1m=3.28084ft
        float n=sc.nextFloat();
        System.out.println(n+" meter = "+(n*3.28084)+" feet");
    }
}
