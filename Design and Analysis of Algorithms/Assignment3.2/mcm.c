#include <stdio.h>
#include <limits.h>
#include <stdlib.h>
int matrixMultiplication(int arr[], int N)
{
    int dp[N][N];
    for (int i = 0; i < N; i++)
    {
        for (int j = 0; j < N; j++)
            dp[i][j] = -1;
    }
    for (int i = 1; i < N; i++)
        dp[i][i] = 0;
    for (int i = N - 1; i >= 1; i--)
    {
        for (int j = i + 1; j < N; j++)
        {
            int mini = INT_MAX;
            for (int k = i; k <= j - 1; k++)
            {
                int ans = dp[i][k] + dp[k + 1][j] + arr[i - 1] * arr[k] * arr[j];
                mini = (mini < ans) ? mini : ans;
            }
            dp[i][j] = mini;
        }
    }
    return dp[1][N - 1];
}
int main()
{
    //int arr[] = {5, 10, 3, 12, 5, 50, 6};
    int *arr,n;
    printf("Enter the number of elements: ");
    scanf("%d",&n);
    fflush(stdin);
    arr = (int *)malloc(n*sizeof(int));
    printf("Enter the elements: ");
    for(int i=0;i<n;i++)
    {
        printf("Enter the element %d: ",i+1);
        scanf("%d",&arr[i]);
        fflush(stdin);
    }
    printf("The minimum number of operations are %d\n", matrixMultiplication(arr, n));
    return 0;
}
