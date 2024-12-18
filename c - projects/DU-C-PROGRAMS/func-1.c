#include<stdio.h>
int main()
{
	sum();
	return 0;
}

void sum()
{
	int n1,n2;
	printf("enter number-1: ");
	scanf("%d",&n1);
	printf("enter number-2: ");
	scanf("%d",&n2);
	printf("%d + %d = %d",n1,n2,n1+n2);
}

