#include<stdio.h>
int main()
{
	
	printf("%d",max());
	return 0;
}

int max()
{
	int n1,n2;
	printf("enter number-1: ");
	scanf("%d",&n1);
	printf("enter number-2: ");
	scanf("%d",&n2);
	if(n1>n2){
		return n1;
	}
 	return n2;
}

