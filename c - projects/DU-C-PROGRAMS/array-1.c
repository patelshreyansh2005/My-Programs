#include<stdio.h>
int main()
{
	int len=0,i;
	printf("Enter length of arr: ");
	scanf("%d",&len);
	int arr[len];
	for(i=0;i<len;i++)
	{
		printf("Enter element %d: ",++i);
		i--;
		scanf("%d",&arr[i]);
	}
	for(i=0;i<len;i++)
	{
		printf("%d ",arr[i]);
	}
	printf("\n");
	for(i--;i>=0;i--)
	{
		printf("%d ",arr[i]);
	}
	return 0;
}
