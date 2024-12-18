using Microsoft.AspNetCore.Mvc;

namespace MVC_Nice_Admin_Table_Froms.Areas.MVC_Area_Demo.Controllers
{
    public class HomeController : Controller
    {
        [Area("MVC_Area_Demo")]
        public IActionResult Index()
        {
            return View();
        }
    }
}
