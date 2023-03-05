#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int* memory(int n)
{
	return (int*)calloc(n*n,sizeof(int));
}

void input(int *a,int n,int size)
{
	for(int i = 0; i < n ; i++)
		for(int j = 0 ; j < n ; j++)
			scanf("%d",a + i*size + j);
}

void print(int *a,int n,int size)
{
	for(int i = 0; i < n ; i++)
	{
		for(int j = 0 ; j < n ; j++)
		{
			printf("%d ",a [ i*size + j]);
		}
		printf("\n");
	}
}

void mult(int *c,int *a,int *b,int size)
{
	for(int i = 0 ; i < size ; i++)
		for(int j = 0 ; j < size ; j++)
			for(int k = 0 ; k < size ; k++)
				c[i*size + j] += a[ i*size + k] * b[ k*size + j];
}

void add(int *c,int *a,int *b,int size)
{
	for(int i = 0 ; i < size ; i++)
		for(int j = 0 ; j < size ; j++)
				c[i*size + j] = a[ i*size + j] + b[ i*size + j];
}

void sub(int *c,int *a,int *b,int size)
{
	for(int i = 0 ; i < size ; i++)
		for(int j = 0 ; j < size ; j++)
				c[i*size + j] = a[ i*size + j] - b[ i*size + j];
}

void st_mul(int *c,int *a,int *b,int n)
{
	if(n == 1)
	{
		c[0] = a[0] * b[0];
		return;
	}
	int *a11 = memory(n/2),*a12 = memory(n/2),*a21 = memory(n/2),*a22 = memory(n/2);
	int *b11 = memory(n/2),*b12 = memory(n/2),*b21 = memory(n/2),*b22 = memory(n/2);
	int *c11 = memory(n/2),*c12 = memory(n/2),*c21 = memory(n/2),*c22 = memory(n/2);
	int *p = memory(n/2),*q = memory(n/2),*r = memory(n/2),*s = memory(n/2);
	int *t = memory(n/2),*u = memory(n/2),*v = memory(n/2),*t1 = memory(n/2),*t2 = memory(n/2);
	int m = n / 2;
	for(int i = 0 ; i < m ; i++)
	{
		for (int j = 0; j < m; ++j)
		{
				a11[i*m + j] = 	a[i*n + j];
				a12[i*m + j] = 	a[i*n + j+m];
				a21[i*m + j] = 	a[(i+m)*n + j];
				a22[i*m + j] = 	a[(i+m)*n + j+m];
				b11[i*m + j] = 	b[i*n + j];
				b12[i*m + j] = 	b[i*n + j+m];
				b21[i*m + j] = 	b[(i+m)*n + j];
				b22[i*m + j] = 	b[(i+m)*n + j+m];
		}
	}
	add(t1,a11,a22,m);
	add(t2,b11,b22,m);
	st_mul(p,t1,t2,m);
	add(t1,a21,a22,m);
	st_mul(q,t1,b11,m);
	sub(t1,b11,b22,m);
	st_mul(r,a11,t1,m);
	sub(t1,b21,b11,m);
	st_mul(s,a22,t1,m);
	add(t2,a12,a11,m);
	st_mul(t,t2,b22,m);
	sub(t1,a21,a11,m);
	add(t2,b12,b11,m);
	st_mul(u,t1,t2,m);
	sub(t1,a12,a22,m);
	add(t2,b21,b22,m);
	st_mul(v,t1,t2,m);	

	add(t1,p,s,m);
	add(t2,v,t1,m);
	sub(c11,t2,t,m);
	add(c12,r,t,m);
	add(c21,q,s,m);
	add(t1,p,r,m);
	add(t2,u,t1,m);
	sub(c22,t2,q,m);

	for(int i = 0 ; i < m ; i++)
	{
		for (int j = 0; j < m; ++j)
		{
				c[i*n + j]			= c11[i*m + j] ;
				c[i*n + j+m]		= c12[i*m + j] ;
				c[(i+m)*n + j]		= c21[i*m + j] ;
				c[(i+m)*n + j+m]	= c22[i*m + j] ;
		}
	}
	free(a11);free(a12);free(a21);free(a22);free(b11);free(b12);free(b21);free(b22);
	free(c11);free(c12);free(c21);free(c22);free(t1);free(t2);free(p);free(q);
	free(r);free(s);free(t);free(u);free(v);
}

int main()
{
	int i,j,k,n,size;
	int sw;
	int *a,*b,*c;
	do
	{
		printf("\n\nPress 1 for Input \nPress 2 for Brute Multiplication\nPress 3 for Strassen Multiplication\nEnter Your Choice = ");
		scanf("%d",&sw);
		switch(sw)
		{
			case 1: printf("\nEnter the size of matrix = ");
					scanf("%d",&n);
					size = 1 << (int)ceil(log2(n));  
					a = memory(size); b = memory(size);
					printf("\nEnter the Matrix A \n");
					input(a,n,size);
					printf("\nEnter the Matrix B \n");
					input(b,n,size);
					printf("\n Matrix A \n");
					print(a,n,size);
					printf("\n Matrix B \n");
					print(b,n,size);
					break;
			case 2: c = memory(size);
					mult(c,a,b,size);
					print(c,n,size);
					break;
			case 3: c = memory(size);
					st_mul(c,a,b,size);
					print(c,n,size); 
					break;
		}
	}while(sw != 4);
	return 0;
}
