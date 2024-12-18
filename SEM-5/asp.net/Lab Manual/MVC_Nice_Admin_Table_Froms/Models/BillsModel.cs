using System.ComponentModel.DataAnnotations;

namespace MVC_Nice_Admin_Table_Froms.Models
{
    public class BillsModel
    {
        public int? BillID { get; set; }
        [Required(ErrorMessage = "Bill number Required")]
        public String? BillNumber { get; set; }

        [Required(ErrorMessage = "HomeAddress Required")]
        public String? HomeAddress { get; set; }

        [Required(ErrorMessage = "BillDate Required")]
        public DateTime BillDate { get; set; }

        [Required(ErrorMessage = "Orderid Required")]
        public int OrderID { get; set; }

        [Required(ErrorMessage = "TotalAmount Required")]
        public double TotalAmount { get; set; }
        [Required(ErrorMessage = "Discount Required")]
        public double Discount { get; set; }

        [Required(ErrorMessage = "NetAmount Required")]
        public double NetAmount { get; set; }

        [Required(ErrorMessage = "UserID Required")]
        public int UserID { get; set; }
    }
}
