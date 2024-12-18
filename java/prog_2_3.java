import java.util.Scanner;
public class prog_2_3 {
    public static void main(String[] args){
        System.out.println("-----2.3-----");
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter area of circle : ");
        float area = sc.nextFloat();
        float diameter = (float) (2f * Math.sqrt(7f*area/22f));
        System.out.println("Diameter = " + diameter);
    }
}
