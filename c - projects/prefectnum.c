#include<stdio.h>
int main(){
	int i=0,n=0,sum=0;
	printf("Enter a number: ");
	scanf("%d",&n);
	int a=n/2+1;
	while(i++<a){
		if(n%i==0){
			sum=sum+i;
		}
	}
	if(sum==n){
		printf("%d is prefect number",n);
	}
	else{
		printf("%d is not prefect number",n);
	}
	return 0;
}
