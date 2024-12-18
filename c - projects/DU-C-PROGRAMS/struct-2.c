#include<stdio.h>

struct book{
	char name[100];
	char author[100];
	char publication[100];
	float prize;
};

int main()
{
	struct book b1;
	printf("Enter Book name: ");
	scanf("%s",b1.name);
	printf("Enter your author: ");
	scanf("%s",b1.author);
	printf("Enter your publication: ");
	scanf("%s",b1.publication);
	printf("Enter your prize: ");
	scanf("%f",&b1.prize);

	printf("\n Book name: %s\n %s author: %s\n %s publication: %s\n %s prize: %.2f\n",b1.name,b1.name,b1.author,b1.name,b1.publication,b1.name,b1.prize);
	return 0;
}

