using Microsoft.AspNetCore.Mvc;
using MVC_Nice_Admin_Table_Froms.Models;
using System.Data;
using System.Data.SqlClient;

namespace MVC_Nice_Admin_Table_Froms.Controllers
{
    public class OrderDetailController : Controller
    {
        private IConfiguration _configuration;

        public OrderDetailController(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        public IActionResult Index()
        {
            return View();
        }
        public IActionResult OrderDetailTable()
        {
            String connectionString = this._configuration.GetConnectionString("ConnectionString");
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            SqlCommand cmd = connection.CreateCommand();
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.CommandText = "PR_OrderDetail_Select_All";
            SqlDataReader reader = cmd.ExecuteReader();
            DataTable table = new DataTable();
            table.Load(reader);
            return View(table);
        }
        public IActionResult OrderDetail_Form()
        {
            return View();
        }
        public IActionResult OrderDetailSave(OrderDetailModel orderDetailModel)
        {
            if (ModelState.IsValid)
            {
                return RedirectToAction("OrderDetailTable");
            }
            return View("OrderDetail_Form", orderDetailModel);
        }
    }
}
