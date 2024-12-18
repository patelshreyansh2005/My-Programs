using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_4
{
    public class Prog_4
    {
        Queue<int> queue;
        public Prog_4()
        {
            queue = new Queue<int>();
        }
        public void displayList()
        {
            foreach (int item in queue)
            {
                Console.Write(item + ", ");
            }
        }
        public void enqueue(int num)
        {
            queue.Enqueue(num);
        }
        public void dequeue()
        {
            queue.Dequeue();
        }
        public void peek()
        {
            Console.WriteLine(queue.Peek());
        }
        public void contains(int num)
        {
            Console.WriteLine(queue.Contains(num));
        }
        public void clear()
        {
            queue.Clear();
        }
    }
}
