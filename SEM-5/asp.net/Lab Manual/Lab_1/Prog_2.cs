using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_1
{
    public class Prog_2
    {
        public string? Name;
        public string? Department;
        public string? Designation;
        public int Experience;
        public int Salary;

        public void SetStaffDetails()
        {
            Console.Write("Enter Name : ");
            Name = Console.ReadLine()!;
            Console.Write("Enter Department : ");
            Console.ReadLine();
            Department = Console.ReadLine()!;
            Console.Write("Enter Designation : ");
            Console.ReadLine();
            Designation = Console.ReadLine()!;
            Console.Write("Enter Experience : ");
            Console.ReadLine();
            Experience = Convert.ToInt32(Console.ReadLine());
            Console.Write("Enter Salary : ");
            Console.ReadLine();
            Salary = Convert.ToInt32(Console.ReadLine());
        }

        public void GetStaffDetails()
        {
            Console.WriteLine("Name : " + Name);
            Console.WriteLine("Salary : " + Salary);
        }
    }
}
