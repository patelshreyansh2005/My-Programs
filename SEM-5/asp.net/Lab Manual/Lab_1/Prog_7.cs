using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_1
{
    public class Salary
    {
        private double Basic;
        private double TA;
        private double DA;
        private double HRA;
        public Salary(double basic, double ta)
        {
            Basic = basic;
            TA = ta;
            DA = 0.1 * Basic;
            HRA = 0.15 * Basic;
            Console.WriteLine(Basic + TA + DA + HRA);
        }
    }
}
