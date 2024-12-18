#include<stdio.h>
int main()
{
	FILE *fe;
	fe =fopen("fake.txt","w");
	int a=0;
	while(a<50000){
		fprintf(fe,"0");
		a++;
	}
	fclose(fe);
	return 0;
}

