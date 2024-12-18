#include<stdio.h>
int main(){
	int i,odd,even,n;
		printf("Enter a number");
		scanf("%d",&n);
		if(n%2==0){
			even++;
		}
		else{
			odd++;
		}
		i++;
	}
	printf("count of even numbers is %d",even);
	printf("count of odd numbers is %d",odd);
}
