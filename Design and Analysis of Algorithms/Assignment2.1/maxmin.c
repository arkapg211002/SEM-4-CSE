#include<stdio.h>
#include<stdlib.h>

struct maxmin
{
    int max;
    int min;
}mm;

void maxmin(int *p,int i,int j)
{
    int max1,min1;
    if(i==j)
    {
        mm.max=mm.min=p[i];
    }
    else if(i==j-1)
    {
        if(p[i]>p[j])
        {
            mm.max=p[i];
            mm.min=p[j];
        }
        else
        {
            mm.max=p[j];
            mm.min=p[i];
        }
    }
    else
    {
        maxmin(p,i,(i+j)/2);
        max1=mm.max;
        min1=mm.min;
        maxmin(p,(i+j)/2+1,j);
        if(mm.max>max1)
            mm.max=mm.max;
        else
            mm.max=max1;
        if(mm.min<min1)
            mm.min=mm.min;
        else
            mm.min=min1;
    }
}

void main()
{
    int *p,n,i;
    printf("Enter the number of elements: \n");
    scanf("%d",&n);
    fflush(stdin);
    p=(int *)malloc(n*sizeof(int));
    for(i=0;i<n;i++)
    {
        printf("Enter element %d: ",(i+1));
        scanf("%d",&p[i]);
        fflush(stdin);

    }
    maxmin(p,0,n-1);
    printf("Maximum element is: %d\n",mm.max);
    printf("Minimum element is: %d\n",mm.min);

}