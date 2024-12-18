using System;
using System.ComponentModel.DataAnnotations;

namespace Project_1.Models
{
    public class OrderModel
    {
        [Key]
        public int? OrderID { get; set; }

        [Required(ErrorMessage = "Order Date is required.")]
        public DateTime OrderDate { get; set; }

        [Required(ErrorMessage = "Customer ID is required.")]
        public int CustomerID { get; set; }

        [Required(ErrorMessage = "Payment Mode is required.")]
        public string PaymentMode { get; set; }

        public int OrderNumber { get; set; }

        [Range(0.01, double.MaxValue, ErrorMessage = "Total Amount must be greater than zero.")]
        public decimal? TotalAmount { get; set; }

        [Required(ErrorMessage = "Shipping Address is required.")]
        public string ShippingAddress { get; set; }

        [Required(ErrorMessage = "User ID is required.")]
        public int UserID { get; set; }
    }

    public class OrderDropDownModel
    {
        public int OrderID { get; set; }
        public string OrderNumber { get; set; }
    }
}
