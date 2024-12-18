using System.ComponentModel.DataAnnotations;

namespace MVC_Nice_Admin_Table_Froms.Models
{
    public class OrderModel
    {
        [Required(ErrorMessage = "Order ID Required")]
        public int OrderID { get; set; }

        [Required(ErrorMessage = "Order Date Required")]
        public DateTime OrderDate { get; set; }

        [Required(ErrorMessage = "Customer ID Required")]
        public int CustomerID { get; set; }

        [Required(ErrorMessage = "Payment Mode Required")]
        public String PaymentMode { get; set; }

        [Required(ErrorMessage = "Total Amount Required")]
        public double TotalAmount { get; set; }

        [Required(ErrorMessage = "Shipping Address Required")]
        public String ShippingAddress { get; set; }

        [Required(ErrorMessage = "User ID Required")]
        public int UserID { get; set; }
    }
}
