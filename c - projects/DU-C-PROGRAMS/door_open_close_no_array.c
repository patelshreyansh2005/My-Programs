#include<stdio.h>
int main()
{
	int n,open,close,sum=0,i,j=1,k;
	printf("Enter a number: ");
	scanf("%d",&n);
	for(i=3;sum<=n;i=i+2)
	{
		sum=sum+i;
		j++;
	}
	if(sum<=10){
		i--;
	}
	else{
		i=i-2;
	}
	printf(" Number of open doors = %d\n Number of close doors = %d",j,n-j);
	return 0;
}
