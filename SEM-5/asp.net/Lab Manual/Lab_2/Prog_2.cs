using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_2
{
    public class Prog_2
    {
        public Prog_2()
        {
            try
            {
                int[] Array = new int[4];
                for (int i = 0; i < 4; i++)
                {
                    Array[0] = Convert.ToInt32(Console.Read());
                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
        }
    }
}
