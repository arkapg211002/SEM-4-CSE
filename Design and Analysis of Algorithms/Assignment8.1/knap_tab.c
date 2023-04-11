#include<stdio.h>
#include<stdlib.h>
void main()
{
    int n,*v,*wt,**dp,w,i,j,max=0;
    int nottake,take;
    printf("Enter the number of elements: ");
    scanf("%d",&n);
    fflush(stdin);
    v=(int *)malloc(n*sizeof(int));
    wt=(int *)malloc(n*sizeof(int));
    printf("Enter the weight of knapsack: ");
    scanf("%d",&w);
    fflush(stdin);
    for(i=0;i<n;i++)
    {
        printf("Enter the value weight: ");
        scanf("%d %d",&v[i],&wt[i]);
        fflush(stdin);
    }
    
    dp=(int **)malloc(n*sizeof(int *));
    for(i=0;i<n;i++)
    {
        dp[i]=(int *)malloc((w+1)*sizeof(int));
    }
    for(i=0;i<n;i++)
    {
        for(j=0;j<=w;j++)
        {
            dp[i][j]=-1;
        }
    }
    
    for(i=wt[0];i<=w;i++)dp[0][i]=v[0];
    for(i=1;i<n;i++)
    {
        for(j=0;j<=w;j++)
        {
            nottake=0+dp[i-1][j];
            take=-9999;
            if(wt[i]<=j)
                take=v[i]+dp[i-1][j-wt[i]];
            dp[i][j]=(take>nottake)?take:nottake;
        }
    }
    //max=f(v,wt,w,n-1,dp);
    printf("Maximum value: %d\n",dp[n-1][w]);
}
