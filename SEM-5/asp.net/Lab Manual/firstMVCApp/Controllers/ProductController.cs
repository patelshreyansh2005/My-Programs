using firstMVCApp.Models;
using Microsoft.AspNetCore.Mvc;

namespace firstMVCApp.Controllers
{
    public class ProductController : Controller
    {
        List<ProductModel> ProductModel = new List<ProductModel>()
        {
            new ProductModel{ProductID = 1,ProductName = "abc", ProductPrice = 100.00, ProductCode = "1", Description = "no description", UserID = 1}
        };
        public IActionResult Index()
        {
            return View();
        }
        public IActionResult ProductForm()
        {
            return View();
        }
    }
}
