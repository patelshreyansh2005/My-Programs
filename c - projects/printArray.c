#include<stdio.h>
int main(){
	int arr[] = {1,2,3,4,5,6,7,8,9};
	print(arr,0,sizeof(arr)/sizeof(arr[0]));
	return 0;
}

void print(int arr[],int i,int len){
	if(i == len){
		return;
	}
	printf("%d, ",arr[i++]);
	print(arr,i,len);
}
