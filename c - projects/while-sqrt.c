#include<stdio.h>
#include<math.h>
int main(){
	int i=0;
	while(i<10){
		printf("%d ",i);
		float sq=sqrt(i);
		printf("%.2f\n",sq);
		i++;
	}
	return 0;
}