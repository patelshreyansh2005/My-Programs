using Lab_3;

public class Program
{
    public static void Main(string[] args)
    {
        int Control = 0;
        string[] lab3 = {
            "1. Write a program using method overloading by changing datatype of\r\narguments to perform addition of two integer numbers and two float\r\nnumbers.",
            "2. Write a program using method overloading by changing number of\r\narguments to calculate area of square and rectangle.",
            "3. Create a class named RBI with calculateInterest() method. Create another\r\nclasses HDFC, SBI, ICICI which overrides calculateInterest() method.",
            "4. Write a program to return the factorial from the method using delegate.",
            "5. Create a class Hospital with HospitalDetails() method. Create another\r\nclasses Apollo, Wockhardt, Gokul_Superspeciality which overrides\r\nHospitalDetails() method.",
            "6. Write a programs to Find Area of Square, Rectangle and Circle using\r\nMethod Overloading.",
            "7. Write a program to create a delegate called TrafficDel and a class called\r\nTrafficSignal with the following delegate methods.\r\nPublic static void Yellow()\r\n{\r\n Console.WriteLine(“Yellow Light Signal To Get Ready”);\r\n}\r\nPublic static void Green()\r\n{\r\n Console.WriteLine(“Green Light Signal To Go”);\r\n}\r\nPublic static void Red()\r\n{\r\n Console.WriteLine(“Red Light Signal To Stop”);\r\n}",
            "8. Write a program to create a delegate calculator to demonstrate the\r\nexample of generic delegate."
        };
        string Key;
        while (true)
        {
            Console.Clear();
            Console.WriteLine(lab3[Control]);
            Key = Console.ReadKey().Key.ToString();
            if (Key == "DownArrow")
            {
                Control++;
                Control %= lab3.Length;
            }
            if (Key == "UpArrow")
            {
                if (Control == 0)
                {
                    Control = lab3.Length - 1;
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
                    string temp1;
                    switch (Control)
                    {
                        case 0:
                            Prog_1 prog_1 = new Prog_1();
                            Console.WriteLine(prog_1.sum(10, 20));
                            Console.WriteLine(prog_1.sum(10.5, 20.5));
                            break;
                        case 1:
                            Prog_2 prog_2 = new Prog_2();
                            Console.WriteLine(prog_2.area(10));
                            Console.WriteLine(prog_2.area(10, 15));
                            break;
                        case 2:
                            RBI rbi = new RBI();
                            SBI sbi = new SBI();
                            HDFC hdfc = new HDFC();
                            ICICI icici = new ICICI();
                            double principal;
                            double rate;
                            double time;
                            Console.Write("Enter principal : ");
                            principal = Convert.ToDouble(Console.ReadLine());
                            Console.Write("Enter rate : ");
                            rate = Convert.ToDouble(Console.ReadLine());
                            Console.Write("Enter time : ");
                            time = Convert.ToDouble(Console.ReadLine());
                            Console.WriteLine(rbi.CalculateInterest(principal, rate, time));
                            Console.WriteLine(sbi.CalculateInterest(principal, rate, time));
                            Console.WriteLine(hdfc.CalculateInterest(principal, rate, time));
                            Console.WriteLine(icici.CalculateInterest(principal, rate, time));
                            break;
                        case 3:
                            Console.Write("Enter a numbr : ");
                            Prog_4 prog_4 = new Prog_4(Convert.ToInt32(Console.ReadLine()));
                            break;
                        case 4:
                            Apollo apollo = new Apollo();
                            Wockhardt wockhardt = new Wockhardt();
                            Gokul_Superspeciality gokul_Superspeciality = new Gokul_Superspeciality();
                            Console.WriteLine(apollo.HospitalDetails());
                            Console.WriteLine(wockhardt.HospitalDetails());
                            Console.WriteLine(gokul_Superspeciality.HospitalDetails());
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