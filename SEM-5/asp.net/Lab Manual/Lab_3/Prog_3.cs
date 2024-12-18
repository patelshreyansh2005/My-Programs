using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static System.Runtime.InteropServices.JavaScript.JSType;

namespace Lab_3
{
    public class Prog_3
    {
    }
    public class RBI
    {
        public virtual double CalculateInterest(double principal, double rate, double time)
        {
            double interest = (principal * rate * time) / 100;
            return interest;
        }
    }

    public class HDFC : RBI
    {
        public override double CalculateInterest(double principal, double rate, double time)
        {
            double interest = principal * Math.Pow((1 + rate / 100), time) - principal;
            return interest;
        }
    }

    public class SBI : RBI
    {
        public override double CalculateInterest(double principal, double rate, double time)
        {
            rate += 0.5;
            double interest = (principal * rate * time) / 100;
            return interest;
        }
    }

    public class ICICI : RBI
    {
        public override double CalculateInterest(double principal, double rate, double time)
        {
            int n = 12;
            double interest = principal * Math.Pow((1 + rate / (n * 100)), (n * time)) - principal;
            return interest;
        }
    }
}
