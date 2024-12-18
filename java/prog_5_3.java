import java.util.Scanner;

public class prog_5_3 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int arr[]=new int[10];
        int i;
        for(i=0;i<10;i++){
            System.out.print("Enter number "+(i+1)+" : ");
            arr[i]= sc.nextInt();
        }
        int n;
        System.out.print("Which number you want to search? : ");
        n=sc.nextInt();
        for (i=0;i<10;i++){
            if (arr[i]==n){
                System.out.println("Fount at : "+i);
            }
        }
    }
}
