#include<stdio.h>
int main(){
	int i=1,n;
	printf("Enter a number - ");
	scanf("%d",&n);
	while(i<=n/2){
		if(n%i==0){
			printf("%d is factor of %d\n",i,n);
		}
		i++;
	}
	printf("%d is factor of %d\n",n,n);
	return 0;
}
