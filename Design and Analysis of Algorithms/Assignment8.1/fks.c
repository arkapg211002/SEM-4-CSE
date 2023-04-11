#include<stdio.h>
#include<stdlib.h>
void main()
{
    int n,i,j,c;
    float *r,*wt,*v,w,o,d,temp,rem,current=0,totalval=0;
    printf("Enter the number of elements:");
    scanf("%d",&n);
    fflush(stdin);
    v=(float *)malloc(n*sizeof(float));
    wt=(float *)malloc(n*sizeof(float));
    r=(float *)malloc(n*sizeof(float));
    printf("Enter the weight of knapsack: ");
    scanf("%f",&w);
    fflush(stdin);
    for(i=0;i<n;i++)
    {
        printf("Enter the weight value: ");
        scanf("%f %f",&o,&d);
        fflush(stdin);
        wt[i]=o;
        v[i]=d;
        r[i]=v[i]/wt[i];
    }
    for(i=0;i<n-1;i++)
    {
        for(j=0;j<n-i-1;j++)
        {
            if(r[i]>r[i+1])
            {
                temp=r[i];
                r[i]=r[i+1];
                r[i+1]=temp;
                
                temp=wt[i];
                wt[i]=wt[i+1];
                wt[i+1]=temp;
                
                temp=v[i];
                v[i]=v[i+1];
                v[i+1]=temp;
            }
        }
    }             
    for(i=0;i<n;i++)
    {
        if(current+wt[i]<=w)
        {
            current+=wt[i];
            totalval+=v[i];
        }
        else
        {
            rem=w-current;
            totalval+=rem*r[i];
            break;
        }
    }
    printf("%.2f \n",totalval);
}
