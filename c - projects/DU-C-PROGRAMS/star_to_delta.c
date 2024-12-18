#include<stdio.h>
int main()
{
	float r1,r2,r3;
	int choice;
	printf("Enter value of R1,R2,R3: ");
	scanf("%f %f %f",&r1,&r2,&r3);
	printf("'1' for star to delta\n'2' for delta to star\nEnter your choice: ");
	scanf("%d",&choice);
	if(choice==1)
	{
		printf("\nRa = %.2f\nRb = %.2f\nRc = %.2f\n",r1+r2+r1*r2/r3,r2+r3+r2*r3/r1,r1+r3+r1*r3/r2);
	}
	else if(choice==2)
	{
		printf("\nRa = %.2f\nRb = %.2f\nRc = %.2f\n",r1*r2/(r1+r2+r3),r2*r3/(r1+r2+r3),r1*r3/(r1+r2+r3));
	}
	else
	{
		printf("\nEnter a valid number\n");
	}
	return 0;
}
