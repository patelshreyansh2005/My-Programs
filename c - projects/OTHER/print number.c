#include<stdio.h>
int main(){

    int num;
    printf("Enter a number ");
    scanf("%d",&num);
    while(num!=0){
    	printf("%d",num);
    	num--;
	}

    return 0;
}