using System.ComponentModel.DataAnnotations;

namespace Project_1.Models
{
    public class OrderDetailModel
    {
        [Key]
        public int? OrderDetailID { get; set; }

        [Required(ErrorMessage = "Order ID is required.")]
        public int OrderID { get; set; }

        [Required(ErrorMessage = "Product ID is required.")]
        public int ProductID { get; set; }

        [Required(ErrorMessage = "Quantity is required.")]
        public int Quantity { get; set; }

        [Required(ErrorMessage = "Amount is required.")]
        [Range(0.01, double.MaxValue, ErrorMessage = "Amount must be greater than zero.")]
        public decimal Amount { get; set; }

        [Required(ErrorMessage = "Total Amount is required.")]
        [Range(0.01, double.MaxValue, ErrorMessage = "Total Amount must be greater than zero.")]
        public decimal TotalAmount { get; set; }

        [Required(ErrorMessage = "User ID is required.")]
        public int UserID { get; set; }
    }
}
