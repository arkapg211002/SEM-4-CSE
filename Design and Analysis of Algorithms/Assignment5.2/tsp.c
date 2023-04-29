#include <stdio.h>
#include <limits.h>

#define N 4

int tsp(int graph[][N], int start, int visited, int n, int memo[][1 << N]) {
    if (visited == (1 << n) - 1) {
        return graph[start][0];
    }
    if (visited > 0 && memo[start][visited] != 0) {
        return memo[start][visited];
    }
    visited |= (1 << start);
    int minCost = INT_MAX;
    for (int i = 0; i < n; i++) {
        if (i == start || graph[start][i] == -1 || (visited & (1 << i)) > 0) {
            continue;
        }
        int cost = graph[start][i] + tsp(graph, i, visited, n, memo);
        if (cost < minCost) {
            minCost = cost;
        }
    }
    visited &= ~(1 << start);
    memo[start][visited] = minCost;
    return minCost;
}

int main() {
    int n = 4;
    int graph[N][N] = {{0, 10, -1, 20}, {-1, 0, 35, -1}, {15, -1, 0, 30}, {20, -1, 30, 0}};
    int visited = 0;
    int memo[N][1 << N];
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < (1 << N); j++) {
            memo[i][j] = 0;
        }
    }
    printf("Minimum Cost: %d\n", tsp(graph, 0, visited, n, memo));
    return 0;
}
