#include<stdio.h>
int main(){
	float n,a;
	printf("enter number ");
	scanf("%f",&n);
	a=n;
	if(((int)n/2)-a/2<0){
		printf("odd");
	}
	else{
		printf("even");
	}
	return 0;
}