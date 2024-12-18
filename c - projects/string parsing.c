#include <stdio.h>
#include <string.h>
void fil(char *arr)
{
    int ind = 0;
    int a,i;
    for (i = 0; i < strlen(arr); i++)
    {
        if (arr[i]=='<')
        {
            a = 0;
            continue;
        }
        else if (arr[i]=='>')
        {
            a = 1;
            continue;
        }
        if (a==1)
        {
            arr[ind] = arr[i];
            ind++;
        }
        
    }
    arr[ind] = '\0';
}

int main()
{
    char arr[] = {"<h1> this is a string </h1>"};
    fil(arr);
    printf("%s\n", arr);
    
    return 0;
}
