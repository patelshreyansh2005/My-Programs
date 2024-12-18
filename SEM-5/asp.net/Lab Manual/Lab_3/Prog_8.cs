using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_3
{
    public delegate double Calculator(double x, double y);
    public class Prog_8
    {
        public Prog_8(double x, double y)
        {
            Calculator calculator = new Calculator(Addition);
            calculator += Subtract;
            calculator += Multiply;
            calculator += Divide;
            Console.WriteLine(calculator(x, y));

        }
        double Addition(double x, double y)
        {
            return x + y;
        }
        double Subtract(double x, double y)
        {
            return x - y;
        }
        double Multiply(double x, double y)
        {
            return x * y;
        }
        double Divide(double x, double y)
        {
            return x / y;
        }
    }
}
