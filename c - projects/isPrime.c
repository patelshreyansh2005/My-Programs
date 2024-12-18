#include<stdio.h>
#include<stdbool.h>

bool isPrime(int n, int i);

int main(){
	int n = 1;
	printf("Enter number : ");
	scanf("%d",&n);
	printf("%d",isPrime(n,2));
	return 0;
}

bool isPrime(int n, int i){
	if(i >= n / 2){
		return !(n % i == 0);
	}
	return isPrime(n, i + 1);
}
