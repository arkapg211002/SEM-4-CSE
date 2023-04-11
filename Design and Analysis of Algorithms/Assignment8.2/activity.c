#include<stdio.h>
#include<stdlib.h>
void main()
{
    int n,*s,*f,i,j,temp=0,c=1;;
    printf("Enter the number of elements: ");
    scanf("%d",&n);
    fflush(stdin);
    s=(int *)malloc(n*sizeof(int));
    f=(int *)malloc(n*sizeof(int));
    for(i=0;i<n;i++)
    {
        printf("Enter starting time - finishing time : ");
        scanf("%d %d",&s[i],&f[i]);
        fflush(stdin);
    }
    for(i=0;i<n-1;i++)
    {
        for(j=0;j<n-i-1;j++)
        {
            if(f[i]>f[i+1])
            {
                temp=f[i];
                f[i]=f[i+1];
                f[i+1]=temp;
                
                temp=s[i];
                s[i]=s[i+1];
                s[i+1]=temp;
             }
         }
     }
     printf("The activities are: \n");
     printf("Start time \t\t\t Finish time\n");
     printf("%d \t\t\t %d\n",s[0],f[0]);
     i=0;
     for(j=1;j<n;j++)
     {
        if(s[j]>=f[i])
        {
            printf("%d \t\t\t %d\n",s[j],f[j]);
            i=j;
        }
     }
}
     
