import java.util.Scanner;
public class prog_2_2 {
    public static void main(String[] args){
        System.out.println("-----2.2-----");
        Scanner sc = new Scanner(System.in);
        System.out.print("enter a weight in pounds : ");
        float weight = sc.nextFloat();
        System.out.print("enter a height in inches : ");
        float height = sc.nextFloat();
        float BMI = (weight*0.45359237f)/(height * height * 0.0254f * 0.0254f) ;
        System.out.println("YOUR BMI IS " + BMI);
    }
}
