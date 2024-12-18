using System.ComponentModel.DataAnnotations;

namespace Project_1.Models
{
    public class CustomerModel
    {
        [Key]
        public int? CustomerID { get; set; }

        [Required(ErrorMessage = "Customer Name is required.")]
        [StringLength(100, ErrorMessage = "Customer Name cannot exceed 100 characters.")]
        public string CustomerName { get; set; }

        [Required(ErrorMessage = "Home Address is required.")]
        [StringLength(100, ErrorMessage = "Home Address cannot exceed 100 characters.")]
        public string HomeAddress { get; set; }

        [Required(ErrorMessage = "Email is required.")]
        [EmailAddress(ErrorMessage = "Invalid Email Address.")]
        public string Email { get; set; }

        [Required(ErrorMessage = "Mobile Number is required.")]
        [StringLength(15, ErrorMessage = "Mobile Number cannot exceed 15 characters.")]
        public string MobileNo { get; set; }

        [Required(ErrorMessage = "GST Number is required.")]
        public string GST_NO { get; set; }

        [Required(ErrorMessage = "City Name is required.")]
        [StringLength(100, ErrorMessage = "City Name cannot exceed 100 characters.")]
        public string CityName { get; set; }

        [Required(ErrorMessage = "Pin Code is required.")]
        [StringLength(15, ErrorMessage = "Pin Code cannot exceed 15 characters.")]
        public string PinCode { get; set; }

        [Required(ErrorMessage = "Net Amount is required.")]
        [Range(0.01, double.MaxValue, ErrorMessage = "Net Amount must be greater than zero.")]
        public double NetAmount { get; set; }

        [Required(ErrorMessage = "User ID is required.")]
        public int UserID { get; set; }
    }

    public class CustomerDropDownModel
    {
        public int CustomerID { get; set; }
        public string CustomerName { get; set; }
    }
}
