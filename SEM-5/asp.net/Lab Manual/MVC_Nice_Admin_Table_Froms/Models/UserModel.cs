using System.ComponentModel.DataAnnotations;

namespace MVC_Nice_Admin_Table_Froms.Models
{
    public class UserModel
    {
        public int UserID { get; set; }

        [Required(ErrorMessage = "UserName is required")]
        public String UserName { get; set; }

        [Required(ErrorMessage = "Email is required")]
        public String Email { get; set; }

        [Required(ErrorMessage = "Password is required")]
        public String Password { get; set; }

        [Required(ErrorMessage = "MobileNo is required")]
        public String MobileNo { get; set; }

        [Required(ErrorMessage = "Address is required")]
        public String Address { get; set; }

        [Required(ErrorMessage = "IsActive is required")]
        public bool IsActive { get; set; }

    }
}
