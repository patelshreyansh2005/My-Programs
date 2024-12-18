#include<stdio.h>
int main()
{
	int len=0,i=0,e=0,o=0;
	printf("Enter length of arr: ");
	scanf("%d",&len);
	int arr[len],even[len],odd[len];
	for(i=0;i<len;i++)
	{
		printf("Enter element %d: ",++i);
		i--;
		scanf("%d",&arr[i]);
	}
	for(i=0;i<len;i++)
	{
		if(arr[i]%2==0)
		{
			even[e]=arr[i];
			printf("even=%d, ",i);
		}
		else
		{
			odd[o]=arr[i];
			printf("odd=%d, ",i);
		}
	}
	printf("Even numbers: ");
	for(;e>=0;e--)
	{
		printf("%d, ",even[e]);
	}
	printf("\nOdd numbers: ");
	for(;o>=0;o--)
	{
		printf("%d, ",odd[o]);
	}	
	printf("\n");
	return 0;
}
