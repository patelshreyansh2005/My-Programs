using Microsoft.AspNetCore.Mvc;
using MVC_Nice_Admin_Table_Froms.Models;
using System.Data.SqlClient;
using System.Data;

namespace MVC_Nice_Admin_Table_Froms.Controllers
{
    public class UserController : Controller
    {
        private IConfiguration configuration;

        public UserController(IConfiguration _configuration)
        {
            configuration = _configuration;
        }
        public IActionResult Index()
        {
            return View();
        }
        public IActionResult UserTable()
        {
            string connectionString = this.configuration.GetConnectionString("ConnectionString")!;
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            SqlCommand command = connection.CreateCommand();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "PR_User_Select_All";
            SqlDataReader reader = command.ExecuteReader();
            DataTable table = new DataTable();
            table.Load(reader);
            return View(table);
        }
        public IActionResult User_Form()
        {
            return View();
        }
        public IActionResult UserSave(UserModel userModel)
        {
            if (ModelState.IsValid)
            {
                return RedirectToAction("UserTable");
            }
            return View("User_Form", userModel);
        }

    }
}
