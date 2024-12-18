using Microsoft.AspNetCore.Mvc;

namespace firstMVCApp.Controllers
{
    public class UserController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
        public IActionResult UserForm()
        {
            return View();
        }
    }
}
