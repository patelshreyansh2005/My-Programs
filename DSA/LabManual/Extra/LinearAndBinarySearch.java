public class LinearAndBinarySearch {
    public static void main(String[] args) {

    }
}

class Search {
    public int LinearSearch(int[] arr, int number) {
        for (int i = 0; i < arr.length; i++) {
            if (arr[i] == number) {
                return i;
            }
        }
        return -1;
    }

    public int binarySearch(int[] arr, int number) {
        int i = 0, j = arr.length - 1, mid;
        if (arr[i] == number) {
            return i;
        }

        if (arr[j] == number) {
            return j;
        }

        while (i < j) {
            mid = (i + j) / 2;
            if (arr[mid] == number) {
                return mid;
            }
            if (arr[mid] > number) {
                j = mid;
            } else {
                i = mid;
            }
        }
        return -1;
    }
}