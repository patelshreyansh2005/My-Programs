using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_2
{
    public abstract class Sum
    {
        public abstract void SumOfTwo(int a, int b);
        public abstract void SumOfThree(int a, int b, int c);
    }
    public class Calculate : Sum
    {
        public override void SumOfTwo(int a, int b)
        {
            Console.Write(a + b);
        }
        public override void SumOfThree(int a, int b, int c)
        {
            Console.Write(a + b + c);

        }
    }
}
