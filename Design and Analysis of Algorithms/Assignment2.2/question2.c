/*
You have an array A of N elements.
Create all possible ordered triplets (i,j,k) such that I,j,k are pairwise distinct and 1<=i and j, k <=N. 
The value of this triplet will be (Ai-Aj)*Ak. Now, find out the maximum value among all possible ordered triplets.

Note: Two ordered triplets (a,b,c) and (d,e,f) are only equal when a=d, b=e, c=f. (1,2,3) and (2,1,3) 
are two different ordered triplets.
*/

#include <stdio.h>
void merge(int *a, int l, int m ,int r)
{
	int i,j,k=0,aux[10];
	for(i=l,j=m+1;i<=m &&j<=r;k++)
	{
		if(a[i]<a[j])
			aux[k]=a[i++];
		else
			aux[k]=a[j++];
	}
	
		while(i<=m)
			{
				aux[k++]=a[i];
				i++;
			}
		for(;j<=r;j++)
			aux[k++]=a[j];
			
		for(i=0;i<k;i++)
		{
			a[l++]=aux[i];
		}
}

void divide(int*a, int l, int r)
{
	int m;
	if(l<r)
	{
		m=(l+r)/2;
		divide(a,l,m);
		divide(a,m+1,r);
		merge(a,l,m,r);
	}
}



void main()
{
	int a[10],n,i,k,x;
	printf("Enter number of element: ");
	scanf("%d",&n);
	for(i=0;i<n;i++)
	{
		printf("Enter element %d ",i+1);
		scanf("%d",&a[i]);
	}
	divide(a,0,n-1);
	printf("Max value is (%d-%d)*%d = %d ",a[n-1],a[0],a[n-2],((a[n-1]-a[0])*a[n-2]));
}
