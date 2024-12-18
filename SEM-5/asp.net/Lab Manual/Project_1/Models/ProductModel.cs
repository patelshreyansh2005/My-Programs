using System.ComponentModel.DataAnnotations;

namespace Project_1.Models
{
    public class ProductModel 
    {
        [Key]
        public int? ProductID { get; set; }

        [Required(ErrorMessage = "Product Name is required.")]
        public string ProductName { get; set; }

        [Required(ErrorMessage = "Product Price is required.")]
        [Range(0.01, double.MaxValue, ErrorMessage = "Product Price must be greater than zero.")]
        public double ProductPrice { get; set; }

        [Required(ErrorMessage = "Product Code is required.")]
        public string ProductCode { get; set; }

        public string Description { get; set; }

        [Required(ErrorMessage = "User ID is required.")]
        public int UserID { get; set; }
    }

    public class ProductDropDownModel
    {
        public int ProductID { get; set; }
        public string ProductName { get; set; }
    }

}


