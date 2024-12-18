import java.util.Scanner;

public class prog_4_6 {
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        int a,b;
        System.out.print("Enter no1 : ");
        a=sc.nextInt();
        System.out.print("Enter no2 : ");
        b= sc.nextInt();
        int gcd = 1 ,i=2;
        while (i<=a && i<=b){
            if (a%i==0&&b%i==0){
                gcd=i;
            }
            i++;
        }
        System.out.println(gcd+" is gdc");
    }
}
