using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_4
{
    public class Prog_1
    {
        ArrayList list;

        public Prog_1()
        {
            list = new ArrayList();
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
