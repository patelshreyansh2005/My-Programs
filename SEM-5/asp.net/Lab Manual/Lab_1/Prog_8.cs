using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_1
{
    public class Distance
    {
        private double dist1;
        private double dist2;
        private double dist3;
        public Distance(double d1, double d2)
        {
            dist1 = d1;
            dist2 = d2;
        }
        public void CalculateSum()
        {
            dist3 = dist1 + dist2;
            Console.WriteLine(dist3);
        }
    }
}
