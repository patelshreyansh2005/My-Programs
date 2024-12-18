//4.B
//Write following programs in C. (Basic)


#include<stdio.h>

void Print_given_feet_into_inches()
{
	int base,p;
	printf("\nEnter value of base ");
	scanf("%d",&base);
	printf("\nEnter value of p ");
	scanf("%d",&p);
	printf("area of triangle is %d \n",base*p/2);

}

void Swap_two_numbers_Using_temporary_variable_and_without_using_temporary_variable()
{
	int n,p,r;
	printf("\nEnter rate ");
	scanf("%d",&r);
	printf("\nEnter total amount ");
	scanf("%d",&p);
	printf("\nEnter year ");
	scanf("%d",&n);
	printf("interest for rate %d amount %d and year %d is %d \n",r,p,n,p*r*n/100);

}

void Check_whether_given_number_is_positive_or_negative()
{
	int f;
	printf("\nEnter temp in fahrenheit ");
	scanf("%d",&f);
	printf("temp in celsius is %d \n",(f-32)*5/9);
}

void Check_whether_the_given_number_is_odd_or_even()
{
	int usec,sec,min,hor;
	printf("Enter seconds: ");
	scanf("%d",&usec);
	hor=usec/3600;
	min=(usec-hor*3600)/60;
	sec=usec-(hor*3600+min*60);
	printf(" %d : %d : %d \n",hor,min,sec);
}

void Check_whether_given_character_is_vowel_or_consonant__Using_single_if_only()
{
	int udays,days,week,year;
	printf("Enter days: ");
	scanf("%d",&udays);
	year=udays/365;
	week=(udays-year*365)/7;
	days=udays-(year*365+week*7);
	printf(" %d : %d : %d \n",year,week,days);
}


int main()
{
	printf("4.B PROGRAMS\n");
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

