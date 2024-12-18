#include<stdio.h>
int main()
{
	int len=0,i,pos=0,neg=0,zero=0;
	printf("Enter length of arr: ");
	scanf("%d",&len);
	int arr[len];
	for(i=0;i<len;i++)
	{
		printf("Enter element %d: ",++i);
		i--;
		scanf("%d",&arr[i]);
		if(arr[i]>0)
		{
			pos++;
		}
		else if(arr[i]<0)
		{
			neg++;
		}
		else
		{
			zero++;
		}
	}
	printf("total positive number = %d\ntotal negative number = %d\ntotal zeros = %d",pos,neg,zero);
	printf("\n");
	return 0;
}
