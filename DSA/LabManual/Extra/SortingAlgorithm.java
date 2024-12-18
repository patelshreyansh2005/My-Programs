public class SortingAlgorithm {
    public static void main(String[] args) {
        
    }
}

class Sorting {
    public void bubbleSort(int[] arr) {
        boolean isNotSorted = true;
        int j = arr.length - 2;
        int temp = 0;

        while (isNotSorted) {
            isNotSorted = false;
            for (int i = 0; i < j; i++) {
                if (arr[i] > arr[j]) {
                    temp = arr[i];
                    arr[i] = arr[j];
                    arr[j] = temp;
                    isNotSorted = true;
                }
            }
        }
    }
}
