#include<stdio.h>
#include<stdlib.h>
int mindis(int *dist,int *spt,int n)
{
    int min=9999,minindex=-1,i;
    for(i=0;i<n;i++)
    {
        if(spt[i]==-1 && dist[i]<min)
        {
            min=dist[i];
            minindex=i;
        }
    }
    return minindex;
}
void main()
{
    int n,**g,*dist,count,v,u,*spt,i,o,d,wt,maxedges;
    printf("Enter the number of vertices: ");
    scanf("%d",&n);
    fflush(stdin);
    g=(int **)malloc(n*sizeof(int *));
    for(i=0;i<n;i++)
    {
        g[i]=(int *)malloc(n*sizeof(int));
    }
    maxedges=n*(n-1)/2;
    for(i=0;i<maxedges;i++)
    {
        printf("\nEnter the source destination weight (-1 -1 -1 to end): ");
        scanf("%d %d %d",&o,&d,&wt);
        fflush(stdin);
        if(o==-1 && d==-1 && wt==-1)break;
        g[o-1][d-1]=wt;
        g[d-1][o-1]=wt;
    }
    
    dist=(int *)malloc(n*sizeof(int));
    spt=(int *)malloc(n*sizeof(int));
    for(i=0;i<n;i++)
    {
        dist[i]=9999;
        spt[i]=-1;
    }
    dist[0]=0;
    for(count=0;count<n-1;count++)
    {
        u=mindis(dist,spt,n);
        spt[u]=1;
        for(v=0;v<n;v++)
        {
            if(spt[v]==-1 && g[u][v] && dist[u]!=9999 && dist[u]+g[u][v]<dist[v])
                dist[v]=dist[u]+g[u][v];
        }
    }
    printf("\nThe distance of vertices from source are:\n");
    for(i=0;i<n;i++)
    {
        printf("For Vertex %d -> %d : \n",(i+1),dist[i]);
    }
}

    
    
