using Microsoft.AspNetCore.Mvc;
using Project_1.Models;
using System.Diagnostics;

namespace Project_1.Controllers
{
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


        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
