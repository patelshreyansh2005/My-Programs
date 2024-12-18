#include<stdio.h>
int main(){
	int min=0,max=0;
	printf("Enter min range - ");
	scanf("%d",&min);
	printf("Enter max range - ");
	scanf("%d",&max);
	if(min>max){
		int temp;
		temp=min;
		min=max;
		max=temp;
	}
	if(min%2!=0){
		min++;
	}
	max++;
	while(min<max){
		printf("%d ",min);
		min=min+2;
	}
	return 0;
}