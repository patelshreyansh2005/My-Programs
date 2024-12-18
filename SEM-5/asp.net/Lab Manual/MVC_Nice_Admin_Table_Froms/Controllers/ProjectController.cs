using Microsoft.AspNetCore.Mvc;

namespace MVC_Nice_Admin_Table_Froms.Controllers
{
    public class ProjectController : Controller
    {
        public IActionResult Project_Table()
        {
            return View();
        }
        public IActionResult Project_Form()
        {
            return View();
        }
    }
}
