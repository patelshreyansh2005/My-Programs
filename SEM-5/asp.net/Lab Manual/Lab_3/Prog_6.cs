using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_3
{
    public class Prog_6
    {
        public float area(float x)
        {
            return x * x;
        }
        public double area(double x, double y)
        {
            return x * y;
        }
        public double area(double x)
        {
            return 2 * Math.PI * x;
        }
    }
}
