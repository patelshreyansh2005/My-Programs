#include<stdio.h>
int main()
{
	printf("%d",sum());
	return 0;
}

int sum()
{
	int n1,n2;
	printf("enter number-1: ");
	scanf("%d",&n1);
	printf("enter number-2: ");
	scanf("%d",&n2);
	return n1+n2;
}

