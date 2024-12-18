#include<stdio.h>
int main()
{
 int n;
 printf("Enter a number: ");
 scanf("%d",&n);
 printf("%d! = %d",n,fact(n));
}

fact(int n)
{
	if(n==0||n==1)
	{
		return 1;
	}
	else
	{
		return n*fact(n-1);
	}
}
