//4.A
//Write following programs in C. (Basic)


#include<stdio.h>
#include"du-c-programs.h"
int main()
{
	printf("4.A PROGRAMS\n");
	while(1)
	{
		int choice=-1;
		printf("\n\n");
		printf("'1' for Print 'Hello World'.\n");
		printf("'2' for Print your address i) using single printf ii) using multiple printf.\n");
		printf("'3' for Print addition of 2 numbers. (with & without scanf)\n");
		printf("'4' for Print average of three numbers. (with & without scanf)\n");
		printf("'5' for Print area of circle. (pie*r*r)\n");
		printf("Enter '0' for exit\n");
		printf("Enter choice: ");
		scanf("%d",&choice);
		printf("\n");
		
		if(choice==0){
			return 0;
		}
		else if(choice==1)
		{
			Print_Hello_World();
		}
		else if(choice==2)
		{
			Print_your_address__i__using_single_printf__ii__using_multiple_printf();
		}
		else if(choice==3)
		{
			Print_addition_of_2_numbers__with_and_without_scanf();
		}
		else if(choice==4)
		{
			Print_average_of_three_numbers__with_and_without_scanf();
		}
		else if(choice==5)
		{
			Print_area_of_circle();
		}
		else
		{
			printf("\nEnter valid number");
		}
	}
}
