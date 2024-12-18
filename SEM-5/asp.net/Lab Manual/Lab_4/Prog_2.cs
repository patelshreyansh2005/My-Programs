using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_4
{
    public class Prog_2
    {
        List<string> list;

        public Prog_2()
        {
            list = new List<string>();
        }
        public void displayList()
        {
            foreach (string item in list)
            {
                Console.Write(item + ", ");
            }
        }
        public void add(string name)
        {
            list.Add(name);
        }
        public void remove(string name)
        {
            list.Remove(name);
        }
        public void removeRange(int start, int end)
        {
            for (int i = start; i < end; i++)
            {
                list.RemoveAt(i);
            }
        }
        public void clear()
        {
            list.Clear();
        }
    }
}
