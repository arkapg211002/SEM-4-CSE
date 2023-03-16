/*
Find the only 10 digit number where the digit at the ith position (i = 0, 1, 2, 3 etc.) 
from left specifies the number of occurrences of digit ' i ' in the given number.
*/



#include <stdio.h>
int count(int *a, int x)
{
        int i,c=0;
        for(i=0;i<10;i++)
        {
                if(a[i]==x)
                        c++;
        }
        return c;
}
int valid(int *a)
{
    int i,f=0;
    for(i=0;i<10;i++)
    {
        if(a[i]!=count(a,i))
                {
                        f=1;
                        break;
                }
    }   
}
void transform(int *a)
{
        int i=0;
        while(valid(a)!=0)
        {
                for(i=0;i<10;i++)
                {
                      a[i]=count(a,i);
                }
        }      
}
void main()
{
        int a[]={9,0,0,0,0,0,0,0,0,1};
        int i,j;
        for(i=0;i<10;i++)
        {
                if(a[i]!=count(a,i))
                        transform(a);
        }
        printf("\nThe required 10-digit number: \n");
        for(i=0;i<10;i++)
                printf("%d",a[i]);   
        printf("\n");                 
}
