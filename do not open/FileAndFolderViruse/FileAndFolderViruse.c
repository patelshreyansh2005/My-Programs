#include<stdio.h>
#include<stdlib.h>
int main(){
	int i = 0;
	while(i<5){
		system("mkdir temp");
		
		system("cd temp");
		
		FILE *fe;
		fe =fopen("fake.txt","w");
		int a=0;
		while(a<500){
			fprintf(fe,"0");
			a++;
		}
		fclose(fe);
		i++;
	}
	
	system("exit");
	return 0;
}

