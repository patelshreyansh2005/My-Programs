#include<stdio.h>

struct empolyee{
	char name[100];
	int salary;
	char birthdate[11];
};

int main()
{
	struct empolyee shrey;
	printf("Enter your name: ");
	scanf("%s",shrey.name);
	printf("Enter your salary: ");
	scanf("%d",&shrey.salary);
	printf("Enter your birthdate: ");
	scanf("%s",shrey.birthdate);
	
	printf("\n Empolyee name: %s\n %s Salary: %d\n %s Birthdate: %s",shrey.name,shrey.name,shrey.salary,shrey.name,shrey.birthdate);
	return 0;
}

