using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_1
{
    public class Prog_4
    {
        public string Enrollment_No;
        public string Student_Name;
        public int Semester;
        public double CPI;
        public double SPI;

        public Prog_4(string Enrollment_No, string Student_Name, int Semester, double CPI, double SPI)
        {
            this.Enrollment_No = Enrollment_No;
            this.Student_Name = Student_Name;
            this.Semester = Semester;
            this.CPI = CPI;
            this.SPI = SPI;
        }
        public void DisplayStudentDetails()
        {
            Console.WriteLine("Enrollment No : " + Enrollment_No);
            Console.WriteLine("Student Name : " + Student_Name);
            Console.WriteLine("Semester : " + Semester);
            Console.WriteLine("CPI : " + CPI);
            Console.WriteLine("SPI : " + SPI);
        }
    }
}
