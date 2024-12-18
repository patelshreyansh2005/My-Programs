#include<stdio.h>
int main(){
	int i,j,k;
	for(i=1;i<=5;i++){
		for(j=1;j<=5-i;j++){
			printf(" ");
		}
		for(k=1;k<=2*i-1;k++){
			if(k%2==0){
				printf(" ");
			}
			else{
				printf("%d",i);
			}
		}
		printf("\n");
	}
	return 0;
}
