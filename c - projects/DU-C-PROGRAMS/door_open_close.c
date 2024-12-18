#include<stdio.h>
int main()
{
	int open=1,close=0,n,i,door[1000],j=0,count=1,k=0;
	printf("Enter a number: ");
	scanf("%d",&n);
	for(i=0;i<n;i++)
	{
		door[i]=0;
	}
	door[i]='\0';
	while(j<n)
	{
		for(k=count-1;k<n;k=k+count)
		{
			if(door[k]==open)
			{
				door[k]=close;
			}
			else
			{
				door[k]=open;
			}
		}
		j++;count++;
	}
	open=0;close=0;
	for(j=0;j<n;j++)
	{
		if(door[j]==0)
		{
			close++;
		}
		else
		{
			open++;
		}
		printf("%d",door[j]);
	}
	printf("\n Number of open doors = %d\n Number of close doors = %d",open,close);
	return 0;
}
