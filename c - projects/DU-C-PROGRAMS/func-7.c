#include<stdio.h>
int main()
{
	int p,r,n;
	printf("enter amount: ");
	scanf("%d",&p);
	printf("enter rate: ");
	scanf("%d",&r);
	printf("enter time: ");
	scanf("%d",&n);
	printf("%d",interest(p,r,n));
	return 0;
}

int max(int p,int r,int n)
{
	return p*r*n/100;
}

