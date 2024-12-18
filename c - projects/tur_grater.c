#include<stdio.h>
int main(){
	int a,b,c;
	char d;
	printf("Enter three numbers ");
	scanf("%d%d%d",&a,&b,&c);
	d=((a>b)?((a>c)?a:c):((b>c)?b:c));
	printf("%d is grater",d);
	return 0;
}