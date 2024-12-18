using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_2
{
    interface Prog_4
    {
        public int Addition(int a, int b);
        public int Subtraction(int a, int b);
    }
    public class Result : Prog_4
    {
        public int Addition(int a, int b)
        {
            return a + b;
        }
        public int Subtraction(int a, int b)
        {
            return a - b;
        }
    }
}
