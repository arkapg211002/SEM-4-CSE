// KADANE'S ALGORITHM -> To find the maximum sum of subarray in an array and print it in O(n) time complexity
#include<stdio.h>
#include<stdlib.h>
void main()
{
    int n,*a,i;
    int curmax,globalmax,startindex,endindex,globalstartindex;
    printf("Enter the size of array: ");
    scanf("%d",&n);
    fflush(stdin);
    a=(int*)malloc(n*sizeof(int));
    printf("Enter the elements of array: \n");
    for(i=0;i<n;i++)
    {
        scanf("%d",&a[i]);
        fflush(stdin);
    }
    curmax=globalmax=a[0];
    startindex=globalstartindex=0;
    endindex=0;
    for(i=1;i<n;i++)
    {
        if(a[i]>curmax+a[i])
        {
            curmax=a[i];
            startindex=i;
        }
        else
        {
            curmax=curmax+a[i];
        }
        if(curmax>globalmax)
        {
            globalmax=curmax;
            globalstartindex=startindex;
            endindex=i;
        }
    }
    printf("The maximum sum of subarray is %d\n",globalmax);
    printf("The subarray is: ");
    for(i=globalstartindex;i<=endindex;i++)
    {
        printf("%d ",a[i]);
    }
    printf("\n");  
    
}
