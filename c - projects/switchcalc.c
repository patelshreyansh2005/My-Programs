#include<stdio.h>
int main(){
	char op;
	float n1,n2,ans;
	printf("Enter 'num1 op num2'");
	scanf("%f %c %f",&n1,&op,&n2);
		switch(op){
		case '+':ans=n1+n2;break;
		case '-':ans=n1-n2;break;
		case '*':ans=n1*n2;break;
		case '/':ans=n1/n2;break;
	}
	printf("ANS = %0.2f",ans);
	return 0;
}