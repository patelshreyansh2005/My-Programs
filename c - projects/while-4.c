#include<stdio.h>
int main(){
	int i=1,sum=0,n=0;
	printf("Enter a number ");
	scanf("%d",&n);
	while(i<=n){
		if(i%2==0){
			sum =sum-i;
		}
		else{
			sum = sum+i;
		}
		i++;
	}
	printf("Ans = %d",sum);
	return 0;
}
