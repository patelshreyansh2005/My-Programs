//4.B
//Write following programs in C. (Basic)


#include<stdio.h>
#include"du-c-programs.h"
int main()
{
	printf("5.A PROGRAMS\n");
	while(1)
	{
		int choice=-1;
		printf("\n\n");
		printf("'1' for Print area of triangle. ((height*base)/2)\n");
		printf("'2' for Print simple interest. (principal*roi*time period)/100\n");
		printf("'3' for Print temperature from Fahrenheit to Celsius. (Formula: c=(((f-32)*5))/9)\n");
		printf("'4' for Convert seconds into hours, minutes & seconds and print in HH:MM:SS. [e.g. 10000 seconds = 02:46:40)]\n");
		printf("'5' for Convert number of days into year, week & days. [e.g. 375 days mean 1 year, 1 week and 3 days]\n");
		printf("Enter '0' for exit\n");
		printf("Enter choice: ");
		scanf("%d",&choice);
		printf("\n");
		
		if(choice==0){
			return 0;
		}
		else if(choice==1)
		{
			Print_area_of_triangle();
		}
		else if(choice==2)
		{
			Print_simple_interest();
		}
		else if(choice==3)
		{
			Print_temperature_from_Fahrenheit_to_Celsius();
		}
		else if(choice==4)
		{
			Convert_seconds_into_hours_minutes_and_seconds_and_print_in_HH_MM_SS();
		}
		else if(choice==5)
		{
			Convert_number_of_days_into_year_week_and_days();
		}
		else
		{
			printf("\nEnter valid number");
		}
	}
	return 0;
}

