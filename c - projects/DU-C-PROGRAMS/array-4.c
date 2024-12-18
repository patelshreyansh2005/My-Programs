//#include<stdio.h>
//int main()
//{
//	int len=0,i,min,temp,max,j=0;
//	printf("Enter length of arr: ");
//	scanf("%d",&len);
//	int arr[len];
//	for(i=0;i<len;i++)
//	{
//		printf("Enter element %d: ",++i);
//		i--;
//		scanf("%d",&arr[i]);
//	}
//	min=arr[j];
//	for(i=0;i<len;i++)
//	{
//		if(arr[i]<min)
//		{
//			j=i;
//		}
//	}
//	
//	temp=arr[0];
//	arr[0]=arr[j];
//	arr[j]=temp;
//	for(i=0;i<len;i++)
//	{
//		if(arr[i]>arr[i+1])
//		{
//			temp=arr[i];
//			arr[i]=arr[i+1];
//			arr[i+1]=temp;
//		}
//	}
//	for(i=0;i<len;i++)
//	{
//		printf("%d, ",arr[i]);
//	}
//	printf("\n");
//	return 0;
//}
