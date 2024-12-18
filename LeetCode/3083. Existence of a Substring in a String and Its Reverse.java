class Solution {
    public boolean isSubstringPresent(String s) {
        char[] arr1 = s.toCharArray();
        char[] arr2 = new StringBuilder(s).reverse().toString().toCharArray();
        for (int i = 0; i < arr1.length - 1; i++) {
            for (int j = 0; j < arr2.length - 1; j++) {
                if ((arr1[i] == arr2[j]) && (arr1[i + 1] == arr2[j + 1])) {
                    return true;
                }
            }
        }
        return false;
    }
}