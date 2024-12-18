import java.util.*;

class graphMatrix {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        int totalVertex;

        System.out.print("Enter number of vertex in graph : ");
        totalVertex = sc.nextInt();

        int[] vertexValues = new int[totalVertex];

        for (int i = 0; i < totalVertex; i++) {
            System.out.print("Enter vertex " + (i + 1) + " value : ");
            vertexValues[i] = sc.nextInt();
        }

        int[][] adjacencyMatrix = new int[totalVertex][totalVertex];

        for (int i = 0; i < totalVertex; i++) {
            for (int j = 0; j < totalVertex; j++) {
                System.out.println("Enter element " + (i + 1) + "-" + (j + 1) + " : ");
                adjacencyMatrix[i][j] = sc.nextInt();
            }
        }

        sc.close();

        Graph g = new Graph();
        g.createGraph(adjacencyMatrix, totalVertex, vertexValues);

    }
}

class GraphNode {
    int data;
    ArrayList<GraphNode> arrayList = new ArrayList<>();

    GraphNode(int data) {
        this.data = data;
    }
}

class Graph {

    ArrayList<GraphNode> vertex = new ArrayList<>();

    public void createGraph(int[][] adjacencyMatrix, int totalVertex, int[] vertexValues) {

        for (int i = 0; i < totalVertex; i++) {
            vertex.add(new GraphNode(vertexValues[i]));
        }

        for (int i = 0; i < totalVertex; i++) {
            for (int j = 0; j < totalVertex; j++) {
                if (adjacencyMatrix[i][j] == 1) {
                    vertex.get(i).arrayList.add(vertex.get(j));
                }
            }
        }
        vertex.clear();
    }

}
