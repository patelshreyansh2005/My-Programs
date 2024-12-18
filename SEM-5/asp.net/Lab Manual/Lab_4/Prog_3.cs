using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_4
{
    public class Prog_3
    {
        Stack<int> stack;
        public Prog_3()
        {
            stack = new Stack<int>();
        }
        public void displayList()
        {
            foreach (int item in stack)
            {
                Console.Write(item + ", ");
            }
        }
        public void push(int num)
        {
            stack.Push(num);
        }
        public void pop()
        {
            stack.Pop();
        }
        public void peek()
        {
            Console.WriteLine(stack.Peek());
        }
        public void contains(int num)
        {
            Console.WriteLine(stack.Contains(num));
        }
        public void clear()
        {
            stack.Clear();
        }
    }
}
