import java.util.Scanner;
public class prog_2_4 {
    public static void main(String[] args){
            System.out.println("-----2.4-----");
            Scanner sc = new Scanner(System.in);
            System.out.print("Enter a number : ");
            int n = sc.nextInt();
            if(n >= 0){
                System.out.println(n + " is positive");
            }
            else{
                System.out.println(n + " is negative");
        }
    }
}
