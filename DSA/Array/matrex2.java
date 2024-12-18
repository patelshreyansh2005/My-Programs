import java.util.Scanner;

class matrix2 {
    public static void main(String[] args) {
        int len = 0;
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter size of array : ");
        len = sc.nextInt();
        int arr1[][] = new int[len][len];
        int arr2[][] = new int[len][len];
        int arr3[][] = new int[len][len];

        System.out.println("Enter element for matrix 1");
        for (int i = 0; i < len; i++) {
                for (int j = 0; j < len; j++) {
                    System.out.print("Enter element at " + i + " " + j + " : ");
                    arr1[i][j] = sc.nextInt();
                }
        }

        System.out.println("Enter element for matrix 1");
        for (int i = 0; i < len; i++) {
                for (int j = 0; j < len; j++) {
                    System.out.print("Enter element at " + i + " " + j + " : ");
                    arr2[i][j] = sc.nextInt();
                }
        }
        int m = 0, n = 0, k = 0;
        sc.close();
        for (int i = 0; i < len; i++) {
            n = 0;
            k = 0;
            for (int l = 0; l < len; l++) {
                for (int j = 0; j < len; j++) {
                    arr3[m][n] += arr1[i][j] * arr2[j][k];
                }
                k++;
                n++;
            }
            m++;
        }
        for (int z = 0; z < len; z++) {
            for (int j = 0; j < len; j++) {
                System.out.printf("%2d, ", arr3[z][j]);
            }
            System.out.println();
        }
    }
}
