#include<stdio.h>
int main(){
	char ch;
	int i=97;
	printf("enter a char ");
	scanf("%c",&ch);
	while(i<(int)ch){
		printf("%c ",i);
		i++;
	}
	return 0;
}