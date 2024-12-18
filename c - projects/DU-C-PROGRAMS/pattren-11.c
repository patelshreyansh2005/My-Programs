#include<stdio.h>
int main()
{
	int i,j,n;
	float sum=1,temp;
	printf("Enter a number: ");
	scanf("%d",&n);
	for(i=1;i<=n;i++)
	{
		temp=1;
		for(j=1;j<=i;j++)
		{
			temp=temp*j;
		}
		sum=sum+(1/temp);
	}
	printf("%f",sum);
	return 0;
}
