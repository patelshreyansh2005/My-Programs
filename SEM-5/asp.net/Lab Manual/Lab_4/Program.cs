using Lab_4;

public class Program
{
    public static void Main(string[] args)
    {
        int Control = 0;
        string[] lab4 = { "1. Create an ArrayList for StudentName and perform following operations:\r\na. Add() - To Add new student in list\r\nb. Remove() - To Remove Student with specified index\r\nc. RemoveRange() - To Remove student with specified range.\r\nd. Clear() - To clear all the student from the list\r\n", "2. Create a List for StudentName and perform following operations:\r\na. Add() - To Add new student in list\r\nb. Remove() - To Remove Student with specified index\r\nc. RemoveRange() - To Remove student with specified range.\r\nd. Clear() - To clear all the student from the list", "3. Create a Stack which takes integer values and perform following\r\noperations:\r\na. Push() - To Add new item in stack\r\nb. Pop() - To Remove item from the stack\r\nc. Peek() – To Return the top item from the stack.\r\nd. Contains() - To Checks whether an item exists in the stack or not.\r\ne. Clear() - To clear items from stack", "4. Create a Queue which takes integer values and perform following\r\noperations:\r\na. Enqueue() - Adds an item into the queue.\r\nb. Dequeue() - Returns an item from the beginning of the queue and\r\n\t       removes it from the queue.\r\nc. Peek() - Returns an first item from the queue without removing it.\r\nd. Contains() - Checks whether an item is in the queue or not\r\ne. Clear() - Removes all the items from the queue" };
        string Key;
        while (true)
        {
            Console.Clear();
            Console.WriteLine(lab4[Control]);
            Key = Console.ReadKey().Key.ToString();
            if (Key == "DownArrow")
            {
                Control++;
                Control %= lab4.Length;
            }
            if (Key == "UpArrow")
            {
                if (Control == 0)
                {
                    Control = lab4.Length - 1;
                }
                else
                {
                    Control--;
                }
            }
            if (Key == "Escape")
            {
                return;
            }
            if (Key == "Enter")
            {
                Console.Clear();
                try
                {
                    switch (Control)
                    {
                        case 0:
                            Prog_1 prog_1 = new Prog_1();
                            string[] prog_1_methods = { "displayList", "add", "remove", "removeRange", "clear" };
                            int temp1 = 0;
                            string temp2;
                            while (true)
                            {
                                Console.Clear();
                                Console.WriteLine("press esc for exit");
                                Console.WriteLine(prog_1_methods[temp1]);
                                temp2 = Console.ReadKey().Key.ToString();
                                if (temp2 == "Escape")
                                {
                                    break;
                                }
                                if (temp2 == "DownArrow")
                                {
                                    temp1++;
                                    temp1 = temp1 % prog_1_methods.Length;
                                }
                                if (temp2 == "UpArrow")
                                {
                                    if (temp1 == 0)
                                    {
                                        temp1 = prog_1_methods.Length - 1;
                                    }
                                    else
                                    {
                                        temp1--;
                                    }
                                }
                                if (temp2 == "Enter")
                                {
                                    switch (temp1)
                                    {
                                        case 0:
                                            prog_1.displayList();
                                            Console.WriteLine("\npress any key to continue");
                                            Console.ReadKey();
                                            break;
                                        case 1:
                                            Console.Write("Enter a name : ");
                                            prog_1.add(Console.ReadLine()!);
                                            break;
                                        case 2:
                                            Console.Write("Enter a name : ");
                                            prog_1.remove(Console.ReadLine()!);
                                            break;
                                        case 3:
                                            Console.Write("Enter start index : ");
                                            int start = Convert.ToInt32(Console.ReadLine());
                                            Console.Write("Enter end index : ");
                                            int end = Convert.ToInt32(Console.ReadLine());
                                            prog_1.removeRange(start, end);
                                            break;
                                        case 4:
                                            prog_1.clear();
                                            break;
                                    }
                                }
                            }
                            break;
                        case 1:
                            Prog_2 prog_2 = new Prog_2();
                            string[] prog_2_methods = { "displayList", "add", "remove", "removeRange", "clear" };
                            temp1 = 0;
                            while (true)
                            {
                                Console.Clear();
                                Console.WriteLine("press esc for exit");
                                Console.WriteLine(prog_2_methods[temp1]);
                                temp2 = Console.ReadKey().Key.ToString();
                                if (temp2 == "Escape")
                                {
                                    break;
                                }
                                if (temp2 == "DownArrow")
                                {
                                    temp1++;
                                    temp1 = temp1 % prog_2_methods.Length;
                                }
                                if (temp2 == "UpArrow")
                                {
                                    if (temp1 == 0)
                                    {
                                        temp1 = prog_2_methods.Length - 1;
                                    }
                                    else
                                    {
                                        temp1--;
                                    }
                                }
                                if (temp2 == "Enter")
                                {
                                    switch (temp1)
                                    {
                                        case 0:
                                            prog_2.displayList();
                                            Console.WriteLine("\npress any key to continue");
                                            Console.ReadKey();
                                            break;
                                        case 1:
                                            Console.Write("Enter a name : ");
                                            prog_2.add(Console.ReadLine()!);
                                            break;
                                        case 2:
                                            Console.Write("Enter a name : ");
                                            prog_2.remove(Console.ReadLine()!);
                                            break;
                                        case 3:
                                            Console.Write("Enter start index : ");
                                            int start = Convert.ToInt32(Console.ReadLine());
                                            Console.Write("Enter end index : ");
                                            int end = Convert.ToInt32(Console.ReadLine());
                                            prog_2.removeRange(start, end);
                                            break;
                                        case 4:
                                            prog_2.clear();
                                            break;
                                    }
                                }
                            }
                            break;
                        case 2:
                            Prog_3 prog_3 = new Prog_3();
                            string[] prog_3_methods = { "displayList", "push", "pop", "peek", "contains", "clear" };
                            temp1 = 0;
                            while (true)
                            {
                                Console.Clear();
                                Console.WriteLine("press esc for exit");
                                Console.WriteLine(prog_3_methods[temp1]);
                                temp2 = Console.ReadKey().Key.ToString();
                                if (temp2 == "Escape")
                                {
                                    break;
                                }
                                if (temp2 == "DownArrow")
                                {
                                    temp1++;
                                    temp1 = temp1 % prog_3_methods.Length;
                                }
                                if (temp2 == "UpArrow")
                                {
                                    if (temp1 == 0)
                                    {
                                        temp1 = prog_3_methods.Length - 1;
                                    }
                                    else
                                    {
                                        temp1--;
                                    }
                                }
                                if (temp2 == "Enter")
                                {
                                    switch (temp1)
                                    {
                                        case 0:
                                            prog_3.displayList();
                                            Console.WriteLine("\npress any key to continue");
                                            Console.ReadKey();
                                            break;
                                        case 1:
                                            Console.Write("Enter a number : ");
                                            prog_3.push(Convert.ToInt32(Console.ReadLine()));
                                            break;
                                        case 2:
                                            prog_3.pop();
                                            break;
                                        case 3:
                                            prog_3.peek();
                                            Console.WriteLine("\npress any key to continue");
                                            Console.ReadKey();
                                            break;
                                        case 4:
                                            Console.Write("Enter a number : ");
                                            prog_3.contains(Convert.ToInt32(Console.ReadLine()));
                                            Console.WriteLine("\npress any key to continue");
                                            Console.ReadKey();
                                            break;
                                        case 5:
                                            prog_3.clear();
                                            break;
                                    }
                                }
                            }
                            break;
                        case 3:
                            Prog_4 prog_4 = new Prog_4();
                            string[] prog_4_methods = { "displayList", "push", "pop", "peek", "contains", "clear" };
                            temp1 = 0;
                            while (true)
                            {
                                Console.Clear();
                                Console.WriteLine("press esc for exit");
                                Console.WriteLine(prog_4_methods[temp1]);
                                temp2 = Console.ReadKey().Key.ToString();
                                if (temp2 == "Escape")
                                {
                                    break;
                                }
                                if (temp2 == "DownArrow")
                                {
                                    temp1++;
                                    temp1 = temp1 % prog_4_methods.Length;
                                }
                                if (temp2 == "UpArrow")
                                {
                                    if (temp1 == 0)
                                    {
                                        temp1 = prog_4_methods.Length - 1;
                                    }
                                    else
                                    {
                                        temp1--;
                                    }
                                }
                                if (temp2 == "Enter")
                                {
                                    switch (temp1)
                                    {
                                        case 0:
                                            prog_4.displayList();
                                            Console.WriteLine("\npress any key to continue");
                                            Console.ReadKey();
                                            break;
                                        case 1:
                                            Console.Write("Enter a number : ");
                                            prog_4.enqueue(Convert.ToInt32(Console.ReadLine()));
                                            break;
                                        case 2:
                                            prog_4.dequeue();
                                            break;
                                        case 3:
                                            prog_4.peek();
                                            Console.WriteLine("\npress any key to continue");
                                            Console.ReadKey();
                                            break;
                                        case 4:
                                            Console.Write("Enter a number : ");
                                            prog_4.contains(Convert.ToInt32(Console.ReadLine()));
                                            Console.WriteLine("\npress any key to continue");
                                            Console.ReadKey();
                                            break;
                                        case 5:
                                            prog_4.clear();
                                            break;
                                    }
                                }
                            }
                            break;
                    }
                }
                catch (Exception e)
                {
                    Console.WriteLine(e.Message);
                }
            }
        }
    }
}