#include <stdio.h>
int main()
{
    int inp;
    int ll;
    int i;
    int ii;
    printf("enter '1' for normal pattern and '0' for reversed pattern ");
    scanf("%d", &inp);
    printf("\n");
    if (inp == 1)
    {
        printf("how long pattern do you want to print ");
        scanf("%d", &ll);
        printf("\n");
        for (i = 1; i <= ll; i++)
        {
            for (ii = 1; ii <= i; ii++)
            {
                printf("*");
            }
            printf("\n");
        }
    }
    else if (inp == 0)
    {
        printf("how long pattern do you want to print ");
        scanf("%d", &ll);
        printf("\n");
        for (i = 0; i < ll; i++)
        {
            for (ii = 0; ii <= ll-i-1; ii++)
            {
                printf("*");
            }
            printf("\n");
        }
    }
    else
    {
        printf("invalid input\n");
    }

    return 0;
}
