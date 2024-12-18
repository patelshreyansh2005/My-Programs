#include<stdio.h>
int main(){
	int amt,total,unit;
	printf("enter unit ");
	scanf("%d",&unit);
	if(unit<=50){
		amt=0.5*unit;
	}
	else if(unit<=150){
		amt=25+0.75*unit;
	}
	else if(unit<=250){
		amt=100+1.2*unit;
	}
	else{
		amt=220+1.5*unit;
	}
	printf("Total bill is %0.2f",amt+amt*0.2);
	return 0;
}