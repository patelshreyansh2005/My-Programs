#include<stdio.h>
int main(){
	int i=101;
	while(i++<201){
		if(i%7==0 && i%5!=0){
			printf("%d ",i);
		}
	}
}