#include<stdio.h>
int main()
{
	int *ptr;
	int n;
	scanf("%d",&n);
	ptr = &n+4;
	*ptr=n;
	printf("%d",*ptr);
}
