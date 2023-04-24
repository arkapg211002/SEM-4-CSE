The time complexity of the Floyd-Warshall algorithm is O(V^3), where V is the number of vertices in the graph. This is because the algorithm involves three nested loops, each running from 0 to V-1, to compute the shortest path between all pairs of vertices. 

The space complexity of the algorithm is O(V^2), since we need to store the distance matrix, which has V^2 elements. 

In the given implementation, the graph is represented using an adjacency matrix, which requires O(V^2) space. The function printSolution() has a time complexity of O(V^2) since it needs to print all elements of the distance matrix. Overall, the space complexity of the program is O(V^2) and the time complexity is O(V^3).
