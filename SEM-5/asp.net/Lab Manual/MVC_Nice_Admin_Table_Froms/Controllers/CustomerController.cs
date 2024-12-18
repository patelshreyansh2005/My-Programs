using Microsoft.AspNetCore.Mvc;
using MVC_Nice_Admin_Table_Froms.Models;
using System.Data;
using System.Data.SqlClient;

namespace MVC_Nice_Admin_Table_Froms.Controllers
{
    public class CustomerController : Controller
    {
        private IConfiguration _configuration;

        public CustomerController(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult CustomerTable()
        {
            String connectionString = this._configuration.GetConnectionString("ConnectionString");
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            SqlCommand command = connection.CreateCommand();
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.CommandText = "PR_Customer_Select_All";
            SqlDataReader reader = command.ExecuteReader();
            DataTable tbl = new DataTable();
            tbl.Load(reader);
            return View(tbl);
        }
        public IActionResult Customer_Form()
        {
            return View();
        }
        public IActionResult CustomerSave(CustomerModel customerModel)
        {
            if (ModelState.IsValid)
            {
                return RedirectToAction("CustomerTable");
            }
            return View("Customer_Form", customerModel);
        }
    }
}
