#include<stdio.h>
int main(){
    int arr[] = {1,9,3,2,5,6,7,8,4};
    int i,j,key;
    for(i=1;i<10;i++){
    	key = arr[i];
    	j=i-1;
    	while(j>=0 && arr[j]>key){
    		arr[j+1]=arr[j];
    		j=j-1;
		}
		arr[j+1]=key;
	}
	for(i=0;i<9;i++){
		printf("%d",arr[i]);
	}
    return 0;
}