//Darshan University
//sem-1
//Computer Programing using C
//Practical List

#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<time.h>

  //////////////////////////////////////////////
 //4.A Write following programs in C. (Basic)//
//////////////////////////////////////////////


//1. Print “Hello World”.
void Print_Hello_World()
{
	printf("Hello World");
}

//2. Print your address i) using single printf ii) using multiple printf.
void Print_your_address__i__using_single_printf__ii__using_multiple_printf()
{
//		i) using single printf
		printf("abcdef society\ncity\nstate\n");
//		ii) using multiple printf
		printf("abcdef society\n");
		printf("city\n");
		printf("state\n");
}

//3. Print addition of 2 numbers. (with & without scanf)
void Print_addition_of_2_numbers__with_and_without_scanf()
{
//	with scanf
	int n1=0,n2=0;
	printf("Enter number-1: ");
	scanf("%d",&n1);
	printf("Enter number-2: ");
	scanf("%d",&n2);
	printf("%d + %d = %d\n",n1,n2,n1+n2);
	
//	without scanf
	n1=5;
	n2=3;
	printf("%d + %d = %d",n1,n2,n1+n2);
}

//4. Print average of three numbers. (with & without scanf)
void Print_average_of_three_numbers__with_and_without_scanf()
{	
//	with scanf
	float n1=0,n2=0,n3=0;
	printf("Enter number-1: ");
	scanf("%f",&n1);
	printf("Enter number-2: ");
	scanf("%f",&n2);
	printf("Enter number-3: ");
	scanf("%f",&n3);
	printf("AVG of %.2f, %.2f and %.2f is %.2f\n",n1,n2,n3,(n1+n2+n3)/3);
	
//	without scanf	
	n1=2.2;
	n2=2.2;
	n3=4.4;
	printf("AVG of %.2f, %.2f and %.2f is %.2f",n1,n2,n3,(n1+n2+n3)/3);
}

//5. Print area of circle. (pie*r*r)
void Print_area_of_circle()
{
	float radius=0;
	printf("Enter Radius: ");
	scanf("%f",&radius);
	printf("Area = %.2f",3.14*radius*radius);
}


  //////////////////////////////////////////////
 //4.B Write following programs in C. (Basic)//
//////////////////////////////////////////////

//1. Print area of triangle. ((height*base)/2)
void Print_area_of_triangle()
{
	int base,p;
	printf("\nEnter value of base ");
	scanf("%d",&base);
	printf("\nEnter value of p ");
	scanf("%d",&p);
	printf("area of triangle is %d \n",base*p/2);
}

//2. Print simple interest. (principal*roi*time period)/100
void Print_simple_interest()
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

//3. Print temperature from Fahrenheit to Celsius. (Formula: c=(((f-32)*5))/9)
void Print_temperature_from_Fahrenheit_to_Celsius()
{
	int f;
	printf("\nEnter temp in fahrenheit ");
	scanf("%d",&f);
	printf("temp in celsius is %d \n",(f-32)*5/9);
}

//4. Convert seconds into hours, minutes & seconds and print in HH:MM:SS. [e.g. 10000 seconds = 02:46:40)]
void Convert_seconds_into_hours_minutes_and_seconds_and_print_in_HH_MM_SS()
{
	int usec,sec,min,hor;
	printf("Enter seconds: ");
	scanf("%d",&usec);
	hor=usec/3600;
	min=(usec-hor*3600)/60;
	sec=usec-(hor*3600+min*60);
	printf(" %d : %d : %d \n",hor,min,sec);
}

//5. Convert number of days into year, week & days. [e.g. 375 days mean 1 year, 1 week and 3 days]
void Convert_number_of_days_into_year_week_and_days()
{
	int udays,days,week,year;
	printf("Enter days: ");
	scanf("%d",&udays);
	year=udays/365;
	week=(udays-year*365)/7;
	days=udays-(year*365+week*7);
	printf(" %d : %d : %d \n",year,week,days);
}


  //////////////////////////////////////////////////////////////////
 //5.A Write following programs in C. (Decision Making: if, else)//
//////////////////////////////////////////////////////////////////

//1. Print given feet into inches. (inches = feet*12)
void Print_given_feet_into_inches()
{
	int n1=0;
	printf("Enter Feets: ");
	scanf("%d",&n1);
	printf("%d feet = %d inches\n",n1,n1*12);
}

//2. Swap two numbers. (Using temporary variable and without using temporary variable)
void Swap_two_numbers()
{
	//	Using temporary variable
	int a,b,c;
	printf("Enter A: ");
	scanf("%d",&a);
	printf("Enter B: ");
	scanf("%d",&b);
	c=b;
	b=a;
	a=c;
	printf("A = %d and B = %d",a,b);
	//without using temporary variable
	a=a+b;
	b=a-b;
	a=a-b;
	printf("A = %d and B = %d",a,b);
}

//3. Check whether given number is positive or negative.
void Check_whether_given_number_is_positive_or_negative()
{
	int n;
	printf("Enter a number: ");
	scanf("%d",&n);
	if(n<0)
	{
		printf("%d is Negative\n",n);
	}
	else
	{
		printf("%d is Positive\n",n);
	}
}

//4. Check whether the given number is odd or even.
void Check_whether_the_given_number_is_odd_or_even()
{
	int n;
	printf("Enter a number: ");
	scanf("%d",&n);
	if(n%2==0)
	{
		printf("%d is even number\n",n);
	}
	else
	{
		printf("%d is odd number\n",n);
	}
}

//5. Find out largest number from given three numbers.
void Find_out_largest_number_from_given_three_numbers()
{
	int a,b,c,d;
	printf("Enter number-1: ");
	scanf("%d",&a);
	printf("Enter number-2: ");
	scanf("%d",&b);
	printf("Enter number-3: ");
	scanf("%d",&c);
	d=(a>b)?(a>c?(printf("%d is largest\n",a)):printf("%d is largest\n",c)):(b>c?(printf("%d is largest\n",b)):printf("%d is largest\n",c));
}

//6. Check whether given character is vowel or consonant. (Using single if only)
void Check_whether_given_character_is_vowel_or_consonant()
{
	char c;
	printf("Enter a charecter: ");
	scanf("%c",&c);
	if((c='a')||(c='e')||(c='i')||(c='o')||(c='u')||(c='A')||(c='E')||(c='I')||(c='O')||(c='U'))
	{
		printf("%c is a vowel\n",c);
	}
	else
	{
		printf("%c is a consonant\n",c);
	}
}



  //////////////////////////////////////////////////////////////////
 //5.B Write following programs in C. (Decision Making: if, else)//
//////////////////////////////////////////////////////////////////


//1. Print “Hello World” without using ‘;’ symbol.
void Print_Hello_World_without_using_symbol()
{
	if(printf("Hello World")){
	}
}

//2. Check whether the given number is odd or even using bitwise operator.
void Check_whether_the_given_number_is_odd_or_even_using_bitwise_operator()
{
	float a;
	printf("Enter a number: ");
	scanf("%d",&a);
	if((int)a>>1==a/2){
		printf("%d is even\n",a);
	}
	else{
	printf("%d is odd\n",a);	
}

//3. Multiply and divide a number by 2 without using multiplication/division operator.
void Multiply_and_divide_a_number_by_2_without_using_multiplication_division_operator()
{
	float a;
	printf("Enter a number-1: ");
	scanf("%d",&a);
	printf("%d X 2 = %d\n%d / 2 = %d",(int)a>>1,(int)a<<1);
}

//4. Shutdown Windows/Linux Shutdown Machine. [#include <stdlib.h> to be used for system() function]
void Shutdown_Windows_Linux_Shutdown_Machine()
{
	char c;
	printf("Do you Shutdown your Computer 'y' for yes:\n");
	scanf("%c",&c);
	if(c=='y')
	{
		system("C:\\WINDOWS\\System32\\shutdown /s");
		system("C:\\WINDOWS\\System32\\shutdown /s");	
	}
}

//5. Display the current Date & Time. [#include <time.h> for time and ctime function and time_t datatype.]
void Display_the_current_Date_Time()
{
	struct tm* ptr;
    time_t t;
    t = time(NULL);
    ptr = localtime(&t);
    printf("%s", asctime(ptr));
}


  //////////////////////////////////////////////////////////////////////////////
 //6.A Write following programs in C. (Decision Making: Nested and Ladder if)//
//////////////////////////////////////////////////////////////////////////////


//1. Perform Addition, Subtraction, Multiplication and Division of 2 numbers as per user’s choice.
void Perform_Addition_Subtraction_Multiplication_and_Division_of_2_numbers_as_per_user_choice()
{
	char op;
	float n1,n2,ans;
	printf("Enter 'num1 op num2'");
	scanf("%f %c %f",&n1,&op,&n2);
		switch(op){
		case '+':ans=n1+n2;break;
		case '-':ans=n1-n2;break;
		case '*':ans=n1*n2;break;
		case '/':ans=n1/n2;break;
	}
	printf("ANS = %0.2f",ans);
}

//2. Enter basic salary of an employee and calculate Gross salary according to given conditions:
//- Basic Salary >= 10000 : HRA = 20% of basic, DA = 80% of basic
//- Basic Salary >= 20000 : HRA = 25% of basic, DA = 90% of basic
//- Basic Salary >= 30000 : HRA = 30% of basic, DA = 95% of basic
void calculate_Gross_salary_according_to_given_conditions()
{
    float basic, da, hra, gross_salary;
    printf("Enter the basic salary of an employee: ");
    scanf("%f", &basic);
    if (basic <= 10000){
        da = basic*0.8;
        hra = basic *0.2;
    }
    else if (basic <= 20000){
        da = basic*0.9;
        hra = basic *0.25;
    }
    else{
        da = basic*0.95;
        hra = basic*0.3;
    }
    gross_salary = basic + da + hra;
    printf("Gross salary of employee: %.2f", gross_salary);
}

//3. Check whether the entered character is upper case, lower case, digit or any special character.
void Check_whether_the_entered_character_is_upper_case_lower_case_digit_or_any_special_character()
{
	char c;
	printf("Enter a charecter: ");
	scanf("%c",&c);
	if(c>96&&c<123)
	{
		printf("%c is a lower case character\n",c);
	}
	else if(c>47&&c<58)
	{
		printf("%c is a digit\n",c);
	}
	else if(c>64&&c<91)
	{
		printf("%c is a upper case character\n",c);
	}
	else
	{
		printf("%c is a special character \n",c);
	}
}
//4. Input an integer number and check the last digit of number is even or odd.
void Input_an_integer_number_and_check_the_last_digit_of_number_is_even_or_odd()
{
	int n,nn;
	printf("Enter a number: ");
	scanf("%d",&n);
	nn=n%10;
	if((nn)%2==0)
	{
		printf("%d is even number\n",nn);
	}
	else
	{
		printf("%d is odd number\n",nn);
	}
}

//5. Read marks of five subjects. Calculate percentage and print class accordingly. 
//Fail below 35, Pass Class between 36 to 45, Second Class between 
//46 to 60, First Class between 61 to 70, Distinction if more than 70.
void Calculate_percentage_and_print_class_accordingly()
{
	
}











