// package LabManual.unit2;

// import java.util.Scanner;

// public class p23b19 {
//     //  Write a program to merge two unsorted arrays
//     public static void main(String[] args) {
//         Scanner sc = new Scanner(System.in);
//         int choice = 1;
//         int arr[] = { 1, 2, 3, 4, 5, 6, 7, 8, 9 };
//         System.out.print("Enter number which you want to delete : ");
//         number = sc.nextInt();
//         Array3.readArr(arr);
//         Array3.printArr(arr);
//         while (true) {
//             System.out.println("\nwant to add another number \n 1 for 'yes' 0 for 'no'");
//             choice = sc.nextInt();
//             if (choice == 0) {
//                 break;
//             }
//             System.out.print("Enter number which you want to delete : ");
//             number = sc.nextInt();
//             Array3.readArr(arr);
//             Array3.printArr(arr);
//         }
//         sc.close();
//     }
// }

// class Array3 {
//     static void readArr(int arr[]){
//         Scanner sc = new Scanner(System.in);
//         for (int i = 0; i < arr.length; i++) {
//             System.out.print("Enter element " + (i+1) + " : ");
//             arr[i] = sc.nextInt();
//         }
//         sc.close();
//     }

//     static void printArr(int arr[]) {
//         System.out.print(arr[0]);
//         for (int i = 1; i < arr.length; i++) {
//             System.out.print(", ");
//             System.out.print(arr[i]);
//         }
//     }
// }
