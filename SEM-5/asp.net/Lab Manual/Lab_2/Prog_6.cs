using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_2
{
    public class Prog_6
    {
        public Prog_6(string s)
        {
            StringBuilder sb = new StringBuilder();
            foreach (char c in s.ToCharArray())
            {
                if (c < 91)
                {
                    sb.Append(c + 32);
                }
                else
                {
                    sb.Append(c - 32);
                }
            }
            Console.WriteLine(sb.ToString());
        }
    }
}