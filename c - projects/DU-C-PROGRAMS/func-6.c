#include<stdio.h>
int main()
{
	int n1,n2;
	printf("enter number-1: ");
	scanf("%d",&n1);
	printf("enter number-2: ");
	scanf("%d",&n2);
	max(n1,n2);
	return 0;
}

int max(int n1,int n2)
{
	
	if(n1>n2){
 	printf("%d",n1);
	}
 	printf("%d",n2);
}

