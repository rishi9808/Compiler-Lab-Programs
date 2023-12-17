#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char a[10][10], f[10];
int m = 0, n = 0;

void e_closure(char c)
{
    for (int i = 0; i < n; i++)
    {
        if (a[i][0] == c && a[i][1] == 'e')
        {
            f[m] = a[i][2];
            m++;
            e_closure(a[i][2]);
        }
    }
}

int main()
{

    char c, ch;
    int z;
    printf("Enter number of transition: ");
    scanf("%d", &n);

    printf("Enter the transitions: \n");
    for (int i = 0; i < n; i++)
    {
        scanf("%s%c", a[i], &ch);
    }

    do
    {
        m = 0;

        printf("Enter the state: ");
        scanf(" %c", &c);

        printf("Epsilon closure (%c) = { %c", c, c);
        e_closure(c);
        for (int i = 0; i < m; i++)
        {
            printf(", %c", f[i]);
        }
        printf(" } \n");

        strcpy(f, " ");

        printf("continue(0/1) : ");
        scanf("%d", &z);

    } while (z == 1);

    return 0;
}