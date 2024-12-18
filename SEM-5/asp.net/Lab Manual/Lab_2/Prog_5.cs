using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_2
{
    public class Prog_5
    {
        public Prog_5()
        {
            string a = "  W3Schools is optimized for learning and training  ";
            Console.WriteLine(a.Replace(" ", "♥"));
            Console.WriteLine(a.ToLower());
            Console.WriteLine(a.ToUpper());
            Console.WriteLine(a.Trim());
            Console.WriteLine(a.CompareTo("Good morning"));
            Console.WriteLine(a.Contains("3"));
            Console.WriteLine(a.Contains("4"));
            Console.WriteLine(a.EndsWith(" "));
            Console.WriteLine(a.IndexOf("r"));
            Console.WriteLine(a.Insert(11, " Nothing Here"));
            Console.WriteLine(a.IsNormalized());
            Console.WriteLine(a.LastIndexOf("r"));
            Console.WriteLine(a.Length);
            Console.WriteLine(a.Normalize());
            Console.WriteLine(a.PadLeft(10));
            Console.WriteLine(a.PadRight(10));
            Console.WriteLine(a.Remove(a.LastIndexOf("r")));
            Console.WriteLine(a.Split(" "));
            Console.WriteLine(a.Substring(a.Length - 10));
            Console.WriteLine(a.ToCharArray());
        }
    }
}
