import java.util.ArrayList;

class Solution {
    public void setZeroes(int[][] matrix) {
        ArrayList<Integer> rows = new ArrayList<>();
        ArrayList<Integer> cols = new ArrayList<>();
        for (int i = 0; i < matrix.length; i++) {
            for (int j = 0; j < matrix[0].length; j++) {
                if (matrix[i][j] == 0) {
                    rows.add(i);
                    cols.add(j);
                }
            }
        }
        while (!rows.isEmpty()) {
            int row = rows.getFirst();
            rows.removeFirst();
            for (int i = 0; i < matrix[0].length; i++) {
                matrix[row][i] = 0;
            }
        }
        while (!cols.isEmpty()) {
            int col = cols.getFirst();
            cols.removeFirst();
            for (int i = 0; i < matrix.length; i++) {
                matrix[i][col] = 0;
            }
        }
    }
}