#include<stdio.h>
#include<stdlib.h>
#include<ctype.h>
void binsearch(int *p,int a,int l,int r);
void main()
{
	int i,*p,n,a;
	printf("Enter the number of elements:\n");
	scanf("%d",&n);
	fflush(stdin);
	p=(int *)malloc(n*sizeof(int));
	for(i=0;i<n;i++)
	{
		printf("Enter the element %d: ",(i+1));
		scanf("%d",&p[i]);
		fflush(stdin);
	}
	printf("The array of elements is:\n");
	for(i=0;i<n;i++)
	{
		printf("%d ",p[i]);
	}
	printf("Enter the element to be searched for: ");
	scanf("%d",&a);
	fflush(stdin);
	binsearch(p,a,0,n);
}
void binsearch(int *p,int a,int l,int r)
{
	int m=(l+r)/2;
	if(l>r)
	{
		printf("Element not found\n");	
		return;
	}
	else if(p[m]==a)
	{
		printf("Element found at position %d\n",m);
		return;
	}
	else if(p[m]>a)
	{
		return binsearch(p,a,l,m-1);
	}
	else return binsearch(p,a,m+1,r);
}
		
		
	
