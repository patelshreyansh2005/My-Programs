#include<stdio.h>
int main(){
	int n=0;
	printf("Enter a number: ");
	scanf("%d",&n);
	while(n!=0){
		printf("%d, ",n%10);
		n=n/10;
	}
	return 0;
}
