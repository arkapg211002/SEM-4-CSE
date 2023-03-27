#include<stdio.h>
#include<stdlib.h>
#define MAX 100
#define NIL -1
struct edge
{
    int u,v,weight;
    struct edge *link;
}*front=NULL;
void make_tree(struct edge tree[]);
void insert_pque(int i,int j,int wt);
struct edge *del_pque();
int isEmpty_pque();
void create_graph();
int n;

void main()
{
    int i;
    struct edge tree[MAX];
    int wt_tree=0;
    create_graph();
    make_tree(tree);
    printf("Edges in the minimum spanning tree are:\n");
    for(i=1;i<=n-1;i++)
    {
        printf("%c - %c\n", (char)(tree[i].u+65), (char)(tree[i].v+65));
        wt_tree=wt_tree+tree[i].weight;
    }
    printf("Weight of the minimum spanning tree is %d\n",wt_tree);
}

void make_tree(struct edge tree[])
{
    struct edge *tmp;
    int v1,v2,root_v1,root_v2;
    int father[MAX];
    int i,count=0;
    for(i=0;i<n;i++)
        father[i]=NIL;
    while(!isEmpty_pque() && count<n-1)
    {
        tmp=del_pque();
        v1=tmp->u;
        v2=tmp->v;
        while(v1!=NIL)
        {
            root_v1=v1;
            v1=father[v1];
        }
        while(v2!=NIL)
        {
            root_v2=v2;
            v2=father[v2];
        }
        if(root_v1!=root_v2)
        {
            tree[count].u=tmp->u;
            tree[count].v=tmp->v;
            tree[count].weight=tmp->weight;
            count++;
            father[root_v2]=root_v1;
        }
    }
    if(count<n-1)
    {
        printf("Spanning tree does not exist\n");
        exit(1);
    }

}

void insert_pque(int i,int j,int wt)
{
    struct edge *tmp,*q;
    tmp=(struct edge *)malloc(sizeof(struct edge));
    tmp->u=i;
    tmp->v=j;
    tmp->weight=wt;
    if(front==NULL || wt<front->weight)
    {
        tmp->link=front;
        front=tmp;
    }
    else
    {
        q=front;
        while(q->link!=NULL && q->link->weight<=wt)
            q=q->link;
        tmp->link=q->link;
        q->link=tmp;
        if(q->link==NULL)tmp->link=NULL;
    }
}

struct edge *del_pque()
{
    struct edge *tmp;
    tmp = front;
    front = front->link;
    return tmp;
}

int isEmpty_pque()
{
    if(front==NULL)
        return 1;
    else
        return 0;
}

void create_graph()
{
    int i,max_edges,origin,destin,wt;
    printf("Enter number of vertices:");
    scanf("%d",&n);
    fflush(stdin);
    max_edges=n*(n-1)/2;
    for(i=1;i<=max_edges;i++)
    {
        printf("Enter edge %d(0 0 to quit):",i);
        scanf("%d %d",&origin,&destin);
        fflush(stdin);
        if((origin==0) && (destin==0))
            break;
        printf("Enter weight for this edge:");
        scanf("%d",&wt);
        fflush(stdin);
        if(origin>=n || destin>=n || origin<0 || destin<0)
        {
            printf("Invalid edge!\n");
            i--;
        }
        else
            insert_pque(origin,destin,wt);
    }
}

