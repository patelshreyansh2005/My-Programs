#include<stdio.h>
int main(){
	int n=0,sum=0,i=0,k=0;
	printf("Enter a number: ");
	scanf("%d",&n);
	k=n;
	while(n!=0){
		i=n%10;
		sum=sum+i*i*i;
		n=n/10;
	}
	if(sum==k){
		printf("%d is Armstrong",k);
	}
	else{
		printf("%d is not Armstrong",k);
	}
}