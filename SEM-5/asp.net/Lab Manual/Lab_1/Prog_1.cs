using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_1
{
    public class Prog_1
    {
        int ID;
        string? Name;
        int Age;
        int Weight;
        int Height;

        public void GetCandidateDetails()
        {
            Console.Write("Enter ID : ");
            ID = Convert.ToInt32(Console.Read());
            Console.Write("Enter Name : ");
            Console.ReadLine();
            Name = Console.ReadLine()!;
            Console.Write("Enter Age : ");
            Age = Convert.ToInt32(Console.Read());
            Console.Write("Enter Weight : ");
            Console.ReadLine();
            Weight = Convert.ToInt32(Console.Read());
            Console.Write("Enter Height : ");
            Console.ReadLine();
            Height = Convert.ToInt32(Console.Read());
        }
        public void DisplayCandidateDetails()
        {
            Console.WriteLine("ID : " + ID);
            Console.WriteLine("Name : " + Name);
            Console.WriteLine("Age : " + Age);
            Console.WriteLine("Weight : " + Weight);
            Console.WriteLine("Height : " + Height);
        }
    }
}
