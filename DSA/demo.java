public class demo {
    public static void main(String[] args) {
    }

    public String a(String s) {
        int len = s.length();

        int[] count = new int[len];
        char[] character = new char[len];

        int index = 0;
        // 1a3b4c
        // abbbcccc

        int temp = 0;

        for (int i = 0; i < len; i++) {
            while (Character.isDigit(s.charAt(i))) {
                temp = temp * 10 + Integer.parseInt(s.charAt(i) + "");
                if (!(Character.isDigit(s.charAt(i + 1)))) {
                    count[index] = temp;
                }
            }
        }
        return "";
    }
}
