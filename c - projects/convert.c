#include <stdio.h>
int main()
{
    char use;
    float km = 0.621;
    float iff = 0.0833;
    float ci = 0.394;
    float pk = 0.454;
    float im = 0.0254;
    float input;

    while (1)
    {
        printf("press 'e' for exit \n");
        printf("enter '1' for convert kilo meters to miles\n");
        printf("enter '2' for convert inches to foot\n");
        printf("enter '3' for convert senti meters to inches\n");
        printf("enter '4' for convert pound to kilo grams\n");
        printf("enter '5' for convert inches to meters\n");
        scanf("%c", &use);
        printf("\n");


        if (use == 'e')
        {
            break;
        }
        else if (use == '1')
        {
            printf("enter value in kilo meters ");
            scanf("%f",&input);
            printf("\n%f kilo meters = %f miles\n",input,input*km);
            continue;
        }
        else if (use == '2')
        {
            printf("enter value in inches ");
            scanf("%f",&input);
            printf("\n%f inches = %f foot\n",input,input*iff);
            continue;
        }
        else if (use == '3')
        {
            printf("enter value in senti meters ");
            scanf("%f",&input);
            printf("\n%f senti meters = %f inches\n",input,input*ci);
            continue;
        }
        else if (use == '4')
        {
            printf("enter value in pound ");
            scanf("%f",&input);
            printf("\n%f pound = %f kilo grams\n",input,input*pk);
            continue;
        }
        else if (use == '5')
        {
            printf("enter value in inches ");
            scanf("%f",&input);
            printf("\n%f inches = %f meters\n",input,input*im);
            continue;
        }
        else
        {
            printf("invalid input\n");
            continue;
        }

        return 0;
    }
}