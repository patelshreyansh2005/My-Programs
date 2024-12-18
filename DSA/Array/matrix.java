import java.util.Scanner;

class matrix {
    public static void main(String[] args) {
        int m1=0,m2=0,n1=0,n2=0;
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter size of matrix-1 (m x n) : ");
        m1 = sc.nextInt();
        n1 = sc.nextInt();
        System.out.print("Enter size of matrix-2 (m x n) : ");
        m2 = sc.nextInt();
        n2 = sc.nextInt();
        int arr1[][] = new int[m1][n1];
        int arr2[][] = new int[m2][n2];
        int arr3[][] = new int[m1][n2];

        if (n1 != m2) {
            System.out.println("invalide matrix");
            System.exit(0);
        }
        

        System.out.println("Enter element for matrix 1");
        for (int i = 0; i < m1; i++) {
                for (int j = 0; j < n1; j++) {
                    System.out.print("Enter element at " + i + " " + j + " : ");
                    arr1[i][j] = sc.nextInt();
                }
        }

        System.out.println("Enter element for matrix 1");
        for (int i = 0; i < m2; i++) {
                for (int j = 0; j < n2; j++) {
                    System.out.print("Enter element at " + i + " " + j + " : ");
                    arr2[i][j] = sc.nextInt();
                }
        }
        System.out.println(m1+" : "+n1+" : "+m2+" : "+n2);
        int m = 0, n = 0, k = 0;
        sc.close();
        for (int i = 0; i < m1; i++) {
            n = 0;
            k = 0;
            System.out.println("m1 = "+i);
            for (int l = 0; l < n2; l++) {
                System.out.println("m1 = "+i+"   m2 = "+l);
                for (int j = 0; j < n2; j++) {
                    System.out.println("m1 = "+i+"   m2 = "+l+"   n2 = "+j+"   n = "+n+"   m = "+m+"   k = "+k);
                    arr3[m][n] += arr1[i][j] * arr2[j][k];
                }
                k++;
                n++;
            }
            m++;
        }
        for (int z = 0; z < m1; z++) {
            for (int j = 0; j < n2; j++) {
                System.out.printf("%2d, ", arr3[z][j]);
            }
            System.out.println();
        }
    }
}
