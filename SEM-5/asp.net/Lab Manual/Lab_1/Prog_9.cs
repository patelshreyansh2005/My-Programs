using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_1
{
    public class Furniture
    {
        protected string? material;
        protected double price;
        public Furniture(string? material, double price)
        {
            this.material = material;
            this.price = price;
        }
        public void DisplayDetails()
        {
            Console.WriteLine("Material: " + material);
            Console.WriteLine("Price: $" + price);
        }
    }
    public class Table : Furniture
    {
        private double height;
        private double surface_area;
        public Table(string? material, double price, double height, double surface_area)
            : base(material, price)
        {
            this.height = height;
            this.surface_area = surface_area;
        }
        public void DisplayTableDetails()
        {
            base.DisplayDetails();
            Console.WriteLine("Height: " + height + " cm");
            Console.WriteLine("Surface Area: " + surface_area + " sq. cm");
        }
    }
}
