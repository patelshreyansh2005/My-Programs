#include <stdio.h>
#include <string.h>

ispalindrome(int number)
{
    int num = number;
    int rev = 0;
    while (number != 0)
    {
        rev = rev * 10 + number % 10;
        number = number / 10;
    }
    printf("reversed number is %d\n", rev);
    if (num == rev)
    {
        printf("entered number is palindrome\n");
        return 0;
    }
    else
    {
        printf("entered number is not a palindrome\n");
        return 1;
    }
}

int main()
{
    int number;
    printf("enter the number\n");
    scanf("%d", &number);
    ispalindrome(number);
    return 0;
}
