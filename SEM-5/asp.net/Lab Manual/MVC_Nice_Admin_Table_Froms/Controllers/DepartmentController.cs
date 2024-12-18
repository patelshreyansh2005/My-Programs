using Microsoft.AspNetCore.Mvc;

namespace MVC_Nice_Admin_Table_Froms.Controllers
{
    public class DepartmentController : Controller
    {
        public IActionResult Department_Table()
        {
            return View();
        }
        public IActionResult Department_Form()
        {
            return View();
        }
    }
}
