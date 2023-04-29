#include <stdio.h>
#include <stdbool.h>

#define N 4
int min=1;
bool isValidColor(int graph[N][N], int colors[], int v, int c)
{
    for (int i = 0; i < N; i++)
    {
        if (graph[v][i] == 1 && c == colors[i])
        {
            return false;
        }
    }
    return true;
}

bool mColoringUtil(int graph[N][N], int colors[], int v, int m)
{
    if (v == N)
    {
        return true;
    }
    for (int c = 1; c <= m; c++)
    {
        if (isValidColor(graph, colors, v, c))
        {
            colors[v] = c;
            //min=(c<min)?c:min;
            if (mColoringUtil(graph, colors, v + 1, m))
            {
                return true;
            }
            colors[v] = 0;
        }
    }
    return false;
}

bool mColoring(int graph[N][N], int m)
{
    int colors[N];
    for (int i = 0; i < N; i++)
    {
        colors[i] = 0;
    }
    bool res = mColoringUtil(graph, colors, 0, m);
    for(int i=0;i<N;i++)
    {
        printf("%d ",colors[i]);
        min = (colors[i]>min)?colors[i]:min;
    }
    printf("\n");
    return res;
}

int main()
{
    int graph[N][N] = {{0, 1, 1, 1},
                       {1, 0, 1, 0},
                       {1, 1, 0, 1},
                       {1, 0, 1, 0}};
    int m = 4;
    //min=m;
    if (mColoring(graph, m))
    {
        printf("Graph can be colored with %d colors.\n", m);
        printf("Minimum number of colors required is %d.\n", min);
    }
    else
    {
        printf("Graph cannot be colored with %d colors.\n", m);
    }
    return 0;
}
