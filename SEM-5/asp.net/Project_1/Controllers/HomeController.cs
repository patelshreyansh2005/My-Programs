using Microsoft.AspNetCore.Mvc;
using Project_1.Models;
using System.Diagnostics;
using System.Security.Cryptography.Xml;

namespace Project_1.Controllers
{
    [CheckAccess]
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        public IActionResult Employee()
        {
            return View();
        }

        public IActionResult AddEmployee()
        {
            return View();
        }

        public IActionResult Department()
        {
            return View();
        }

        public IActionResult AddDepartment()
        {
            return View();
        }

        public IActionResult Projects()
        {
            return View();
        }

        public IActionResult AddProjects()
        {
            return View();
        }

        public IActionResult EmployeeProjects()
        {
            return View();
        }

        public IActionResult AddEmployeeProject()
        {
            return View();
        }


        public IActionResult Profile()
        {
            return View();
        }

        public IActionResult CreateCookies()
        {
            string key = "My_CoffeeShop_Key";
            string value = "Hello_World_From_Cookies";
            
            CookieOptions options = new CookieOptions();
            options.Expires = DateTime.Now.AddDays(5);
           Response.Cookies.Append(key, value, options);
            return View("Index");
        }
        public IActionResult RemoveCookies()
        {
            string key = "My_CoffeeShop_Key";
            string value = "Hello_World_From_Cookies";

            CookieOptions options = new CookieOptions();
            options.Expires = DateTime.Now.AddDays(-1);

            Response.Cookies.Append(key, value, options);
            return View("Index");
        }
        public IActionResult ReadCookies()
        {
            string key = "My_CoffeeShop_Key";

            string cookieValue = Request.Cookies[key];

            if (cookieValue == null)
            {
                cookieValue = "Cookie not found.";
            }
            Console.WriteLine(cookieValue);
            ViewBag.CookieValue = cookieValue;

            return View("Index");
        }



        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
