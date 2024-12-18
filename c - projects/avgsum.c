#include<stdio.h>
int main(){
	int n=0,sum=0,count=0;
	char c;
	float avg=0;
	while(1){
		if(c=='e'){
			break;
		}
		printf("Enter a number: ");
		scanf("%d",&n);
		sum=sum+n;
		count++;
		printf("Enter 'e' for exit: ");
		scanf("%c",&c);
	}
	if(count!=0){
		printf("sum of numbers = %d\n",sum);
		printf("avg of numbers = %d",sum/n);
	}
}
