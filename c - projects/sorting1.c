#include<stdio.h>
#include<stdbool.h>
int main(){
    int arr[] = {1,2,3,4,5,6,7,8,9};
    int i,j;
    bool isSorted = false;
    while(!isSorted){
    	isSorted = true;
    	for(i=0;i<9;i++){
    		if(arr[i]>arr[i+1]){
    			int temp = arr[i];
    			arr[i] = arr[i+1];
    			arr[i+1] = temp;
    			isSorted = false;
			}
		}
	}
    return 0;
}