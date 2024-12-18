#include<stdio.h>
int main(){
	int i=0,max=0,sum=0;
	printf("Enter max range - ");
	scanf("%d",&max);
	max++;
	while(i<max){
		sum=sum+i++;
	}
	printf("sum = %d ",sum);
	return 0;
}