using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_2
{
    public class Prog_1
    {
        public void ErrorMethod()
        {
            try
            {
                int Zero = 0;
                Console.WriteLine(1 / Zero);
            }
            catch (Exception e)
            {
                Console.WriteLine(e.ToString());
            }
        }
    }
}
