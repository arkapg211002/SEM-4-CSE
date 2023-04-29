/*

Find the numbers from 1 to N that contains exactly k non-zero digits
Given two integers N and K. The task is to find the number of integers 
between 1 and N (inclusive) that contains exactly K non-zero digits when 
written in base ten.
Example: Input: N = 100, K = 1
Output: 19
Explanation:
The digits with exactly 1 non zero digits between 1 and 100 are:
1, 2, 3, 4, 5, 6, 7, 8, 9,
10, 20, 30, 40, 50, 60, 70, 80, 90, 100
Input: N = 25, K = 2
Output: 14
Explanation:
The digits with exactly 2 non zero digits between 1 and 25 are:
11, 12, 13, 14, 15, 16, 17,
18, 19, 21, 22, 23, 24, 25

*/

#include <stdio.h>
#include <stdlib.h>

void main()
{
    int n,k,i,count=0,temp,c;
    printf("Enter the values for n and k : ");
    scanf("%d %d",&n,&k);
    fflush(stdin);
    for(i=1;i<=n;i++)
    {
        temp=i;
        c=0;
        while(temp>0)
        {
            if(temp%10!=0)
            {
                c++;
            }
            temp/=10;
        }
        if(c==k)
        {
            count++;
            printf("%d ",i);
        }
    }
    printf("\nThe number of integers between 1 and %d (inclusive) that contains exactly %d non-zero digits when written in base ten is %d",n,k,count);
    printf("\n");
}
