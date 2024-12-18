#include<stdio.h>
void main(){
	int n,p,r;
	printf("\nEnter rate ");
	scanf("%d",&r);
	printf("\nEnter total amount ");
	scanf("%d",&p);
	printf("\nEnter year ");
	scanf("%d",&n);
	printf("interest for rate %d amount %d and year %d is %d \n",r,p,n,p*r*n/100);
}