using Microsoft.AspNetCore.Mvc;
using MVC_Nice_Admin_Table_Froms.Models;
using System.Data;
using System.Data.SqlClient;

namespace MVC_Nice_Admin_Table_Froms.Controllers
{
    public class OrderController : Controller
    {
        private IConfiguration _configuration;

        public OrderController(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult OrderTable()
        {
            string connectionString = this._configuration.GetConnectionString("ConnectionString");
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            SqlCommand cmd = connection.CreateCommand();
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.CommandText = "PR_Order_Select_All";
            SqlDataReader reader = cmd.ExecuteReader();
            DataTable table = new DataTable();
            table.Load(reader);
            return View(table);
        }
        public IActionResult Order_Form()
        {
            return View();
        }
        public IActionResult OrderSave(OrderModel orderModel)
        {
            if (ModelState.IsValid)
            {
                return RedirectToAction("OrderTable");
            }
            return View("Order_Form", orderModel);
        }
    }
}
