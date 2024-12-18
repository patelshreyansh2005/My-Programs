#include<stdio.h>
int main(){
	int i=1,x,y,ans;
	printf("Enter value of base - ");
	scanf("%d",&x);
	printf("Enter value of power - ");
	scanf("%d",&y);
	while(i<=y){
		ans=ans*x;
		i++;
	}
	printf("Ans = %d",ans);
}
