using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_3
{
    public delegate int Factorial(int x);
    public class Prog_4
    {
        public Prog_4(int n)
        {
            Factorial factorial = new Factorial(Fact);
            Console.WriteLine("Factorial of " + n + " is " + factorial(n));
        }
        int Fact(int x)
        {
            if (x <= 2)
            {
                return x;
            }
            return x * Fact(x - 1);
        }
    }
}
