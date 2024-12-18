// package DSA;

public class MaxMinOfAnArray {
    public static void main(String[] args) {
        int[] arr = { 1, 5, 2, 8, 9, 6, 3, 4, 7 };
        MinMaxOfAnArray.minMaxOfAnArray(arr);
        System.out.println("Minimum = " + MinMaxOfAnArray.min);
        System.out.println("Maximum = " + MinMaxOfAnArray.max);
    }
}

class MinMaxOfAnArray {
    static int min = 0, max = 0;
    static int i;

    static void minMaxOfAnArray(int[] arr) {
        min = arr[0];
        max = arr[0];

        for (i = 0; i < 9; i++) {
            if (arr[i] < min) {
                min = i;
            }
            if (arr[i] > max) {
                max = i;
            }
        }
    }
}