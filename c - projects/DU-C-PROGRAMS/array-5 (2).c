#include<stdio.h>
int main()
{
	int n,i,j,k;
	printf("enter a number: ");
	scanf("%d",&n);
	
	for(i=1;i<=n;i++)
	{
		for(i=1;i<=n;i++)
		{
			printf("%3d ",i);
		}
		printf("\n");
	}
}


//  1  2  3  4  5
// 16 17 18 19  6
// 15 24 25 20  7
// 14 23 22 21  8
// 13 12 11 10  9


//  1  2  3
//  8  9  4
//  7  6  5


