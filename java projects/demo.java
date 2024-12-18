import java.util.Scanner;

public class demo {
    public static void main(String[] args) {
        int n = 0, i = 0, correct = 0, wrong = 0, blank = 0,marks=0;
        int[] arr = new int[500];
        Scanner sc = new Scanner(System.in);
        System.out.println("'8' for back");
        System.out.println("'-1' for end");
        System.out.println("'1' for correct");
        System.out.println("'0' for wrong");
        System.out.println("'2' for blank");

        for(i=0;i<500;i++){
            arr[i]= -10;
        }
        i=0;
        while (n != -1) {
            System.out.println("====="+(i+1)+"=====");
            n = sc.nextInt();
            if (n == 0 || n == 1 || n == 2) {
                arr[i] = n;
            }
            if (n == 8) {
                i--;
            } else {
                i++;
            }
        }
    
        for(i=0;i<500;i++){
            if(arr[i]==0){
                wrong++;
            }
            else if(arr[i]==1){
                correct++;
            }
            else if(arr[i]==2){
                blank++;
            }
        }

        marks = correct*4-wrong;

        System.out.println("Correct = " + correct + " wrong = " + wrong+" Not Answered " + blank+"\nTotal marks = "+marks);
    }
}
