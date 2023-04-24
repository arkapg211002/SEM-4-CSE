#include <stdio.h>
#define V 5
#define INF 99999
void printSolution(int dist[][V]);
void floydWarshall(int dist[][V])
{
	int i, j, k;
	for (k = 0; k < V; k++) {
		for (i = 0; i < V; i++) {
			for (j = 0; j < V; j++) {
				if (dist[i][k] + dist[k][j] < dist[i][j])
					dist[i][j] = dist[i][k] + dist[k][j];
			}
		}
	}
	printSolution(dist);
}
void printSolution(int dist[][V])
{
	int i,j;
	printf("The following matrix shows the shortest distances between every pair of vertices \n");
	for (i = 0; i < V; i++) {
		for (j = 0; j < V; j++) {
			if (dist[i][j] == INF)
				printf("%7s", "INF");
			else
				printf("%7d", dist[i][j]);
		}
		printf("\n");
	}
}
// driver's code
int main()
{			   // 0  1   2   3   4 
	int graph[V][V] = { { INF, 3, 8, INF, -4},
			    { INF, INF, INF, 1, 7},
			    { INF, 4, INF, INF , INF},
			    { 2, INF, 5, INF , INF},
			    { INF, INF, 6, INF, INF} };
	floydWarshall(graph);
	return 0;
}
