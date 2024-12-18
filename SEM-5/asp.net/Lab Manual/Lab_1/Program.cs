using Lab_1;

public class Program
{
    public static void Main(string[] args)
    {
        int Control = 0;
        string Key;
        while (true)
        {
            Console.WriteLine(Control + 1);
            Key = Console.ReadKey().Key.ToString();
            Console.Clear();
            if (Key == "DownArrow")
            {
                Control++;
                Control %= 10;
            }
            if (Key == "UpArrow")
            {
                if (Control == 0)
                {
                    Control = 9;
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
                            prog_1.GetCandidateDetails();
                            prog_1.DisplayCandidateDetails();
                            break;
                        case 1:
                            Prog_2[] prog_2 = new Prog_2[5];
                            for (int i = 0; i < 5; i++)
                            {
                                prog_2[i] = new Prog_2();
                                prog_2[i].GetStaffDetails();
                            }
                            for (int i = 0; i < 5; i++)
                            {
                                if (prog_2[i].Designation!.ToLower() == "HOD")
                                {
                                    Console.WriteLine("Name : " + prog_2[i].Name + "Salary : " + prog_2[i].Salary);
                                }
                            }
                            break;
                        case 2:
                            Prog_3 prog_3 = new Prog_3();
                            prog_3.GetAccountDetails();
                            prog_3.DisplayAccountDetails();
                            break;
                        case 3:
                            string? Enrollment_No = Console.ReadLine();
                            string? Student_Name = Console.ReadLine();
                            int Semester = Convert.ToInt32(Console.ReadLine());
                            double CPI = Convert.ToDouble(Console.ReadLine());
                            double SPI = Convert.ToDouble(Console.ReadLine());
                            Prog_4 prog_4 = new Prog_4(Enrollment_No, Student_Name, Semester, CPI, SPI);
                            prog_4.DisplayStudentDetails();
                            break;
                        case 4:
                            int height = Convert.ToInt32(Console.ReadLine());
                            int width = Convert.ToInt32(Console.ReadLine());
                            Prog_5 prog_5 = new Prog_5(height, width);
                            break;
                        case 5:
                            Account_Details account_details = new Account_Details();
                            account_details.SetAccountDetails();
                            account_details.GetAccountDetails();
                            Interest interest = new Interest();
                            interest.UpdateBalance(account_details);
                            account_details.GetAccountDetails();
                            break;
                        case 6:
                            Salary salary = new Salary(10000, 100);
                            break;
                        case 7:
                            Distance distance = new Distance(10, 20);
                            distance.CalculateSum();
                            break;
                        case 8:
                            string? material = Console.ReadLine();
                            double price = Convert.ToDouble(Console.ReadLine());
                            height = Convert.ToInt32(Console.ReadLine());
                            double surface_area = Convert.ToDouble(Console.ReadLine());
                            Table table = new Table(material, price, height, surface_area);
                            table.DisplayTableDetails();
                            break;
                        case 9:
                            Employee employee = new Employee();
                            employee.Basic_Sal();
                            Salary2 salary2 = new Salary2();
                            salary2.Display_Salary();
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