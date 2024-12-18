import java.util.Scanner;

public class Attendance {
    public static void main(String[] args) {
        int max,min;
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter min range : ");
        int temp1=sc.nextInt();
        System.out.print("Enter max range : ");
        int temp2=sc.nextInt();
        if (temp1>temp2){
            max=temp1;
            min=temp2;
        }
        else {
            max=temp2;
            min=temp1;
        }
        int array[][] = new int[max-min+1][2];
        int p_or_a=-2,num=min,count1=0;
        System.out.println("Enter 0 for Absent and 1 for present");
        while(num<=max) {
            System.out.print("Is " + (num++) + " Present? : ");
            p_or_a = sc.nextInt();
            array[count1][0] = num;
            array[count1][1] = p_or_a;
            count1++;
        }
        for (count1=0;count1<array.length;count1++){
            if (array[count1][1]==0){
                System.out.println(array[count1-1][0]+" is Absent");
            }
        }
    }
}
