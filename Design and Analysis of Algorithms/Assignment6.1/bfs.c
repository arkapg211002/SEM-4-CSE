#include<stdio.h>
#include<stdlib.h>
#define MAX 100
#define initial 1
#define waiting 2
#define visited 3
int n;
int adj[MAX][MAX];
int state[MAX];
void create();
void bftraversal();
void bfs(int v);
int queue[MAX],front=-1,rear=-1;
void insert(int v);
int del();
int isempty();

void main()
{
    create();
    bftraversal();
}

void bftraversal()
{
    int v;
    for(v=0;v<n;v++)
    {
        state[v]=initial;
    }
    printf("Enter starting vertex: ");
    scanf("%d",&v);
    fflush(stdin);
    bfs(v);
}

void bfs(int v)
{
    int i;
    insert(v);
    state[v]=waiting;
    while(!isempty())
    {
        v=del();
        
        //printf("%d",v);
        if(v==0)printf("a ");
        else if(v==1)printf("b ");
        else if(v==2)printf("c ");
        else if(v==3)printf("d ");
        else if(v==4)printf("e ");
        else if(v==5)printf("f ");
        else if(v==6)printf("g ");
        else if(v==7)printf("h ");
        state[v]=visited;
        for(i=0;i<n;i++)
        {
            if(adj[v][i]==1 && state[i]==initial)
            {
                insert(i);
                state[i]=waiting;
            }
        }
    }
    printf("\n");
}

void insert(int v)
{
    if(rear==MAX-1)printf("Queue overflow\n");
    else
    {
        if(front==-1)front=0;
        rear=rear+1;
        queue[rear]=v;
    }
}

int isempty()
{
    if(front==-1 || front>rear)return 1;
    else return 0;
}

int del()
{
    int dt;
    if(front==-1 || front>rear)
    {
        printf("Queue underflow\n");
        exit(1);
    }
    dt=queue[front];
    front=front+1;
    return dt;
}

void create()
{
    int i,maxedges,o,d;
    printf("Enter number of vertices: ");
    scanf("%d",&n);
    fflush(stdin);
    maxedges=n*(n-1)/2;
    for(i=0;i<=maxedges;i++)
    {
        printf("Enter edge %d(-1 -1) to quit: ",i);
        scanf("%d %d",&o,&d);
        if(o==-1 && d==-1)break;
        if(o>=n || d>=n || o<0 || d<0)
        {
            printf("Invalid edge\n");
            i--;
        }
        else adj[o][d]=1;
    }
}
             
