using System.ComponentModel.DataAnnotations;

namespace MVC_Nice_Admin_Table_Froms.Models
{
    public class OrderDetailModel
    {
        [Required(ErrorMessage = "OrderDetail ID Required")]
        public int OrderDetailID { get; set; }

        [Required(ErrorMessage = "Order ID Required")]
        public int OrderID { get; set; }

        [Required(ErrorMessage = "Product ID Required")]
        public int ProductID { get; set; }

        [Required(ErrorMessage = "Quantity Required")]
        public int Quantity { get; set; }

        [Required(ErrorMessage = "Amount Required")]
        public double Amount { get; set; }

        [Required(ErrorMessage = "Total Amount Required")]
        public double TotalAmount { get; set; }

        [Required(ErrorMessage = "User ID Required")]
        public int UserID { get; set; }
    }
}
