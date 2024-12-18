#include<stdio.h>
int main()
{
	int n1,n2;
	printf("enter number-1: ");
	scanf("%d",&n1);
	printf("enter number-2: ");
	scanf("%d",&n2);
	printf("%d",sum(n1,n2));
	return 0;
}

int sum(int n1,int n2)
{
	return n1+n2;
}

