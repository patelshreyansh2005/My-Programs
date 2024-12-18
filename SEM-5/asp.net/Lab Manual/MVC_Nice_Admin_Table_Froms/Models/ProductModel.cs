using System.ComponentModel.DataAnnotations;

namespace MVC_Nice_Admin_Table_Froms.Models
{
    public class ProductModel
    {
        public int? ProductId { get; set; }

        [Required(ErrorMessage = "ProductName required")]
        public String ProductName { get; set; }

        [Required(ErrorMessage = "Description required")]
        public String Description { get; set; }

        [Required(ErrorMessage = "ProductPrice required")]
        public double ProductPrice { get; set; }
        
        [Required(ErrorMessage = "ProductCode required")]
        public int ProductCode { get; set; }

        [Required(ErrorMessage = "UserID required")]
        public int UserID { get; set; }
    }
}
