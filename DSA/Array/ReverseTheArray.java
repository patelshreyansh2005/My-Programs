public class ReverseTheArray {
    public static void main(String[] args) {
        int[] arr = {1,2,3,4,5,6,7,8,9};
        arr=revOfAnArray(arr);
        printArray(arr);
    }

    public static int[] revOfAnArray(int[] arr){
        int temp;
        int length =arr.length;
        for (int i = 0; i < length/2; i++) {
            temp = arr[i];
            arr[i] = arr[length-1-i];
            arr[length-1-i]=temp;
        }
        return arr;
    }

    public static void printArray(int[] arr){
        for (int i = 0; i < arr.length; i++) {
                System.out.print(arr[i] + ", ");
        }
    }
}
