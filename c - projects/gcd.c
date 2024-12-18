#include <stdio.h>

int main() {
    int n1 = 0,n2 = 0;
    printf("Enter num1 : ");
    scanf("%d",&n1);
    printf("Enter num2 : ");
    scanf("%d",&n2);
    printf("%d", gcd(n1,n2,1));
    return 0;
}

int gcd(int n1, int n2) {
	int i = 1;
	int min = 0;
	int ans = 0;
	if(n1 < n2){
		min = n1;
	} else {
		min = n2;
	}
    for(i = 1; i <= min; i++){
    	if(n1 % i == 0 && n2 % i == 0){
    		ans = i;
		}
	}
	return ans;
}





