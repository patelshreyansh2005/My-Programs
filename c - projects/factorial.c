#include<stdio.h>
int main(){
	int i=1,n,ans=1;
	printf("Enter a number - ");
	scanf("%d",&n);
	while(i<=n){
		ans=ans*i;
		i++;
	}
	printf("Ans = %d",ans);
	return 0;
}
