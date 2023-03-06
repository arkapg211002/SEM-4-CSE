#include<stdio.h>
#include<stdlib.h>
void main()
{
    int *p,n;
    int max1,max2,min,i;
    max1=max2=-999999;
    min=999999;
    printf("Enter the size of array: ");
    scanf("%d",&n);
    fflush(stdin);
    p=(int*)malloc(n*sizeof(int));
    for(int i=0;i<n;i++)
    {
        printf("Enter the element: ");
        scanf("%d",&p[i]);
        fflush(stdin);
    }
    for(i=0;i<n;i++)
    {
        if(p[i]>=max1)
        {
            max2=max1;
            max1=p[i];
        }
        else if(p[i]>=max2)
        {
            max2=p[i];
        }
        if(p[i]<min)
        {
            min=p[i];
        }
    }
    if((max1-min)*max2 > (max2-min)*max1)
    {
        printf("The maximum answer is %d",(max1-min)*max2);
    }
    else
    {
        printf("The maximum product is %d",(max2-min)*max1);
    }


}
