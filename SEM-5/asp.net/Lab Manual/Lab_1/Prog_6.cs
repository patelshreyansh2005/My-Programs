using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_1
{
    public class Account_Details
    {
        public double Balance;
        private int Account_No;
        private string Account_Type = "";

        public void SetAccountDetails()
        {
            Console.WriteLine("Enter Account No : ");
            Account_No =  Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Enter Balance : ");
            Balance = Convert.ToDouble(Console.ReadLine());
            Console.WriteLine("Enter Account Type : ");
            Account_Type = Console.ReadLine()!;
        }
        public void GetAccountDetails() 
        {
            Console.WriteLine("Balance : " + Balance);
            Console.WriteLine("Account No : " + Account_No);
            Console.WriteLine("Account Type : " + Account_Type);
        }
    }
    public class Interest: Account_Details
    {
        public void UpdateBalance(Account_Details account_Details) 
        {
            account_Details.Balance += account_Details.Balance * 0.2;
        }
    }
}
