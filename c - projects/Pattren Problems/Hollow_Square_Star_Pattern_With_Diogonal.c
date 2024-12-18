#include<stdio.h>
int main(){
	int i,j,k,l,n;
	printf("Enter number - ");
	scanf("%d",&n);
	//*******
	//**   **
	//* * * *
	//*  *  *
	//* * * *
	//**   **
	//*******
	for(i=1;i<=n;i++){
		if(i==1||i==n){
			for(j=1;j<=n;j++){
				printf("*");	
			}
			printf("\n");
		}
		else{
			
		}
		printf("\n");
	}
	return 0;
}
