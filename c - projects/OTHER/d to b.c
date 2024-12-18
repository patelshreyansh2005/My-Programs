#include<stdio.h>
int main()
{
	int n,i=0;
	int arr[64];
	printf("Enter a number: ");
	scanf("%d",&n);
	while(n!=0)
	{
		arr[i]=n%2;
		n=n/2;
		i++;
	}
	arr[i]='\0';
	i--;
	while(i>=0)
	{
		printf("%d",arr[i]);
		i--;
	}
	return 0;
}

