using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_2
{
    public class Prog_9
    {
        public Prog_9(string s)
        {
            string[] strings = s.Split(" ");
            int max = strings[0].Length;
            string longStr = "";
            foreach (string str in strings)
            {
                if (str.Length > max)
                {
                    longStr = str;
                    max = str.Length;
                }
            }
            Console.WriteLine(longStr);
        }
    }
}
