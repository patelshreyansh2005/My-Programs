#include<stdio.h>
int main()
{
	int i,j,n,k=1,m=65;
	printf("Enter a number: ");
	scanf("%d",&n);
	for(i=1;i<=n;i++)
	{
		for(j=1;j<=i;j++)
		{
			if(i%2==0){
				printf("%c ",m++);
			}
			else{
				printf("%d ",k++);
			}
		}
		printf("\n");
	}
	return 0;
}
