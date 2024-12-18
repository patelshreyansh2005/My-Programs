using System.ComponentModel.DataAnnotations;

namespace MVC_Nice_Admin_Table_Froms.Models
{
    public class CustomerModel
    {
        [Required(ErrorMessage = "Customer ID Required")]
        public int CustomerID { get; set; }

        [Required(ErrorMessage = "Customer Name Required")]
        public String CustomerName { get; set; }

        [Required(ErrorMessage = "Home Address Required")]
        public String HomeAddress { get; set; }

        [Required(ErrorMessage = "Email Required")]
        public String Email { get; set; }

        [Required(ErrorMessage = "Mobile No Required")]
        public String MobileNo { get; set; }

        [Required(ErrorMessage = "GST No Required")]
        public String GSTNo { get; set; }

        [Required(ErrorMessage = "City Name Required")]
        public String CityName { get; set; }

        [Required(ErrorMessage = "Pin Code Required")]
        public String PinCode { get; set; }

        [Required(ErrorMessage = "Net Amount Required")]
        public double NetAmount { get; set; }

        [Required(ErrorMessage = "User ID Required")]
        public int UserID { get; set; }
    }
}
