#include<stdio.h>
int main()
{
	int r1,c1,r2,c2,i,j,k,choice;
	printf("'1' For addition\n '2' for multiplication\n");
	scanf("%d",&choice);
	if(choice!=2 && choice!=1)
	{
		printf("Enter a valid choice\n");
		return 0;
	}
	printf("Enter value of (rows) and (columns) of matrix-1\n");
	scanf("%d %d",&r1,&c1);
	int arr1[r1][c1];
	for(i=0;i<r1;i++)
	{
		for(j=0;j<c1;j++)
		{
			printf("Enter value for Row-%d and Column-%d\n",i+1,j+1);
			scanf("%d",&arr1[i][j]);
		}
	}
	printf("Enter value of (rows) and (columns) of matrix-2\n");
	scanf("%d %d",&r2,&c2);

	if(choice==2)
	{
		if(c1!=r2)
		{
			printf("multiplication of given metrix is not possible\n");
			return 0;
		}
	}
	else
	{
		if(c1!=c2 && r1!=r2)
		{
			printf("addition of given metrix is not possible\n");
			return 0;
		}
	}

	int ans[r1][c2];
	int arr2[r2][c2];
	for(i=0;i<r2;i++)
	{
		for(j=0;j<c2;j++)
		{
			printf("Enter value for Row-%d and Column-%d\n",i+1,j+1);
			scanf("%d",&arr2[i][j]);
		}
	}

	if(choice==1)
	{
		for(i=0;i<r2;i++)
		{
			for(j=0;j<c2;j++)
			{
				ans[i][j]=arr1[i][j]+arr2[i][j];
			}
		}
	}

//=== c=1 c=2 c=3    c=1 c=2 c=3
//r=1	1   2   3      9   8   7
//r=2	4   5   6      6   5   4
//r=3	7   8   9      3   2   1

	else
	{
		for(i=0;i<r2;i++)
		{
			int sum=0;
			
		}
	}

	for(i=0;i<r1;i++)
	{
		for(j=0;j<c2;j++)
		{
			printf("%d ",ans[i][j]);
		}
		printf("\n");
	}
	return 0;
}
