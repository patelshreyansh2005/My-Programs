#include<stdio.h>
int main()
{
	int n1,n2;
	printf("enter number-1: ");
	scanf("%d",&n1);
	printf("enter number-2: ");
	scanf("%d",&n2);
	sum(n1,n2);
	return 0;
}

void sum(int n1,int n2)
{
	printf("%d + %d = %d",n1,n2,n1+n2);
}

