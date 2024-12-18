#include<stdio.h>
int main(){
	int i=1,n=0;
	printf("Enter max range - ");
	scanf("%d",&n);
	n++;
	while(i<n){
		printf("%d ",i);
		i=i+2;
	}
	return 0;
}