#include<stdio.h>
int main(){
	int i=1,n;
	printf("Enter a number - ");
	scanf("%d",&n);
	while(i<=10){
		printf("%2d X %2d = %2d\n",n,i,n*i);
		i++;
	}
	return 0;
}
