#include<stdio.h>
int main(){
	int k=0,n=0;
	printf("Enter a number: ");
	scanf("%d",&n);
	k=n;
	while(n>=10){
		n=n/10;
	}
	printf("sum = %d",n+k%10);
	return 0;
}
