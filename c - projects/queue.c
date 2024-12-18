#include<stdio.h>
#define size 5
struct queue{
	int val;
	int arr[size];
	int front;
	int rear;
}q;

void enqueue(int val){
	if(q.rear >= size){
		printf("Queue Overflow");
		return;
	}
	q.rear++;
	q.arr[q.rear] = val;
}

int dequeue(){
	if(q.front < 0){
		printf("Queue is Empty");
		return 0;
	}
	q.front++;
	
	return q.arr[q.front-1];
}

void display(){
	int i;
	for(i=q.front;i<=q.rear;i++){
		printf("%d",q.arr[i]);
	}
}

int main(){
    int choice = 0;
    
    return 0;
}