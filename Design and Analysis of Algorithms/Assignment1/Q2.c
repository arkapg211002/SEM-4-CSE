#include<stdio.h>
#include<stdlib.h>
void merge(int *p,int l,int m,int r);
void merge_sort(int *p,int l,int r);
void swap(int *p,int i,int j);
void quick(int *p,int l,int r);
void swapp(int *a,int *b);
void heapify(int *p,int n,int i);
void heap(int *p,int n);
void main()
{
	int i,*p,n,ch;
	printf("Enter the number of elements: ");
	scanf("%d",&n);
	fflush(stdin);
	p=(int *)malloc(n*sizeof(int));
	for(i=0;i<n;i++)
	{
		printf("Enter the element %d:",(i+1));
		scanf("%d",&p[i]);
		fflush(stdin);
	}
	printf("The Array is: ");
	for(i=0;i<n;i++)
	{
		printf("%d ",p[i]);
	}
	printf("\nEnter the choice 1->mergesort 2->quick sort 3->heap sort\n");
	scanf("%d",&ch);
	fflush(stdin);
	switch(ch)
	{
		case 1:
			merge_sort(p,0,n-1);
			break;
		case 2:
			quick(p,0,n-1);
			break;
		case 3:
			heap(p,n);
			break;
		default:
			printf("Invalid choice\n");
	}
	
	
	
	
	printf("The sorted array is: ");
	for(i=0;i<n;i++)
	{
		printf("%d ",p[i]);
	}
	
}
void merge(int *p,int l,int m,int r)
{
	int i,j,k;
	int n1=m-l+1;
	int n2=r-m;
	int *L,*R;
	L=(int *)malloc(n1*sizeof(int));
	R=(int *)malloc(n2*sizeof(int));
	for(i=0;i<n1;i++)
	{
		 L[i]=p[l+i];
	}
	for(j=0;j<n2;j++)
	{
		R[j]=p[m+1+j];
	}
	i=0;j=0;k=l;
	while(i<n1 && j<n2)
	{
		if(L[i]<R[j])
		{
			p[k]=L[i];
			i++;
		}
		else
		{
			p[k]=R[j];
			j++;
		}
		k++;
	}
	while(i<n1)
	{
		p[k]=L[i];
		i++;
		k++;
	}
	while(j<n2)
	{
		p[k]=R[j];
		j++;
		k++;
	}
}
void merge_sort(int *p,int l,int r)
{
	 int m;
	 if(l<r)
	 {
	 	m=l+(r-l)/2;
	 	merge_sort(p,l,m);
	 	merge_sort(p,m+1,r);
	 	merge(p,l,m,r);
	 }
}
void swap(int *p,int i,int j)
{
	int t=p[i];
	p[i]=p[j];
	p[j]=t;
}
void quick(int *p,int l,int r)
{
	int i,last;
	if(l>=r)return;
	last=l;
	swap(p,l,(l+r)/2);
	for(i=l+1;i<=r;i++)
	{
		if(p[l]>p[i])
		{
			swap(p,++last,i);
		}
	}
	swap(p,last,l);
	quick(p,l,last-1);
	quick(p,last+1,r);
}
void swapp(int *a,int *b)
{
	int temp= *a;
	*a=*b;
	*b=temp;
}
void heapify(int *p,int n,int i)
{
	int largest=i;
	int l=2*i+1;
	int r=2*i+2;
	if(l<n && p[i]>p[largest])
	{
		largest=l;
    }
    if(r<n && p[r]>p[largest])
    	largest=r;
    if(largest!=i)
    {
    	swapp(&p[i],&p[largest]);
    	heapify(p,n,largest);
    }
}
void heap(int *p,int n)
{
	int i;
	for(i=n/2-1;i>=0;i--)
	{
		heapify(p,n,i);
	}
	for(i=n-1;i>=0;i--)
	{
		swapp(&p[0],&p[i]);
		heapify(p,i,0);
	}
}
    	
