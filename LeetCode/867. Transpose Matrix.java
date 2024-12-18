class Solution {
    public int[][] transpose(int[][] matrix) {
        int[][] teansposeMatrix = new int[matrix[0].length][matrix.length];
        for (int i = 0; i < teansposeMatrix.length; i++) {
            for (int j = 0; j < teansposeMatrix[i].length; j++) {
                teansposeMatrix[i][j] = matrix[j][i];
            }
        }
        return teansposeMatrix;
    }
}