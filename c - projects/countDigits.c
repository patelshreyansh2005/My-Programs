#include<stdio.h>
int main(){
	int n = 0;
	printf("Enter a number : ");
	scanf("%d",&n);
	printf("%d",count(n));
	return 0;
}

int count(int n){
	if(n == 0){
		return 0;
	}
	return 1 + count(n/10);
}
