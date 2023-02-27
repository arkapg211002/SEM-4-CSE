/*
Find Maximum and Minimum element from an array of integer using
Divide and Conquer approach as well as dynamic programming approach.
*/

#include <stdio.h>

typedef struct max_min
{
    int max, min;
} max_min;

max_min get_max_min(int *a, int l, int r)
{
    max_min p;
    max_min p1, p2;
    int m;

    if (l < r)
    {

        if (r - l == 1)
        {
            if (a[l] > a[r])
            {
                p.max = a[l];
                p.min = a[r];
            }
            else
            {
                p.min = a[l];
                p.max = a[r];
            }
            // printf("%d, %d\n",a[l],a[r]);
            return p;
        }
        else
        {
            m = (l + r) / 2;
            p2 = get_max_min(a, l, m);
            p1 = get_max_min(a, m, r);

            if (p1.max >= p2.max)
                p.max = p1.max;
            else if (p1.max < p2.max)
                p.max = p2.max;

            if (p1.min <= p2.min)
                p.min = p1.min;
            else if (p1.min > p2.min)
                p.min = p2.min;
            return p;
            // printf("%d, %d\n",p.max,p.min);
        }
    }
}

void main()
{
    int n, i;
    printf("Enter the number of elements: ");
    scanf("%d", &n);
    int a[n];
    for (i = 0; i < n; i++)
    {
        printf("Enter element no %d: ", i + 1);
        scanf("%d", &a[i]);
    }
    max_min p;
    p = get_max_min(a, 0, n - 1);
    printf("the max value is %d\nthe min value is %d\n", p.max, p.min);
}
