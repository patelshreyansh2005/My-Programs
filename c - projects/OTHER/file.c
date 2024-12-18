#include<stdio.h>
#include<string.h>
int main()
{
	FILE *fp;
	char str[100];
	int roll=0;
	fp = fopen("a.txt","a");
	printf("Enter your name: ");
	gets(str);
	printf("Enter your Roll No: ");
	scanf("%d",&roll);
	
	fprintf(fp,"Name : %s\n",str);
	fprintf(fp,"Roll No : %d\n",roll);
	
	fclose(fp);
	return 0;
}

