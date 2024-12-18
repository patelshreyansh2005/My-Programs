#include<stdio.h>
int main()
{

	FILE *fp;
	fp = fopen("aa.txt","r");
	int space,tab,newline,ch;
	char c;
	while(!feof(fp))
	{
		c=fgetc(fp);
		if(c=='\n')
		{
			newline++;
		}
		else if(c=='\t')
		{
			tab++;
		}
		else if(c==' ')
		{
			space++;
		}
		else
		{
			ch++;
		}
	}
	printf(" space=%d \n tab=%d \n new line=%d \n char=%d",space,tab,newline,ch);
	
	fclose(fp);
	return 0;
}

