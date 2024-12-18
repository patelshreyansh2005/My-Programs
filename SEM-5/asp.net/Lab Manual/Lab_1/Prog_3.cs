using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_1
{
    internal class Prog_3
    {
        private int Account_No;
        private string? Email;
        private string? User_Name;
        private string? Account_Type;
        private double Account_Balance = 0;

        public void GetAccountDetails()
        {
            Console.Write("Enter Account No : ");
            Account_No = Convert.ToInt32(Console.Read());
            Console.Write("Enter Email : ");
            Email = Console.ReadLine();
            Console.Write("Enter User Name : ");
            User_Name = Console.ReadLine();
            Console.Write("Enter Account Type : ");
            Account_Type = Console.ReadLine();
            Console.Write("Enter Account Balance : ");
            Account_Balance = Convert.ToDouble(Console.Read());
        }
        public void DisplayAccountDetails()
        {
            Console.WriteLine("Account No : " + Account_No);
            Console.WriteLine("Email" + Email);
            Console.WriteLine("User Name" + User_Name);
            Console.WriteLine("Account Type" + Account_Type);
            Console.WriteLine("Account Balance" + Account_Balance);
        }
    }
}
