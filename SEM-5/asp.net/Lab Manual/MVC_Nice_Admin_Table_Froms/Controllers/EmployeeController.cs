using Microsoft.AspNetCore.Mvc;

namespace MVC_Nice_Admin_Table_Froms.Controllers
{
    public class EmployeeController : Controller
    {
        public IActionResult Employee_Table()
        {
            return View();
        }
        public IActionResult Employee_Form()
        {
            return View();
        }
    }
}
