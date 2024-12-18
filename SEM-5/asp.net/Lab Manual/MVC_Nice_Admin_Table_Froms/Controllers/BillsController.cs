using Microsoft.AspNetCore.Mvc;
using MVC_Nice_Admin_Table_Froms.Models;
using System.Data;
using System.Data.SqlClient;

namespace MVC_Nice_Admin_Table_Froms.Controllers
{
    public class BillsController : Controller
    {

        private IConfiguration _configuration;

        public BillsController(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        public IActionResult Index()
        {
            return View();
        }
        public IActionResult BillsTable()
        {
            String connectionString = this._configuration.GetConnectionString("ConnectionString")!;
            SqlConnection sqlConnection = new SqlConnection(connectionString);
            sqlConnection.Open();
            SqlCommand cmd = sqlConnection.CreateCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "PR_Bills_Select_All";
            SqlDataReader reader = cmd.ExecuteReader();
            DataTable tbl = new DataTable();
            tbl.Load(reader);
            return View(tbl);
        }
        public IActionResult BillsDelete(int BillID)
        {
            try
            {
                string connectionString = this._configuration.GetConnectionString("ConnectionString")!;
                SqlConnection connection = new SqlConnection(connectionString);
                connection.Open();
                SqlCommand command = connection.CreateCommand();
                command.CommandType = CommandType.StoredProcedure;
                command.CommandText = "PR_Bills_Delete_ByID";
                command.Parameters.Add("@BillID", SqlDbType.Int).Value = BillID;
                command.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                TempData["ErrorMessage"] = ex.Message;
                Console.WriteLine(ex.ToString());
            }
            return RedirectToAction("BillsTable");
        }
        public IActionResult Bills_Form()
        {
            return View();
        }
        public IActionResult BillsSave(BillsModel billsModel)
        {
            if (ModelState.IsValid)
            {
                string connectionString = this._configuration.GetConnectionString("ConnectionString")!;
                SqlConnection connection = new SqlConnection(connectionString);
                connection.Open();
                SqlCommand command = connection.CreateCommand();
                command.CommandType = CommandType.StoredProcedure;
                if (billsModel.BillID == null)
                {
                    command.CommandText = "PR_Product_Insert";
                }
                else
                {
                    command.CommandText = "PR_Product_Update";
                    command.Parameters.Add("@BillID", SqlDbType.Int).Value = billsModel.BillID;
                }
                command.Parameters.Add("@BillDate", SqlDbType.DateTime).Value = billsModel.BillDate;
                command.Parameters.Add("@BillNumber", SqlDbType.VarChar).Value = billsModel.BillNumber;
                command.Parameters.Add("@Discount", SqlDbType.Decimal).Value = billsModel.Discount;
                command.Parameters.Add("@TotalAmount", SqlDbType.Decimal).Value = billsModel.TotalAmount;
                command.Parameters.Add("@NetAmount", SqlDbType.Decimal).Value = billsModel.NetAmount;
                command.Parameters.Add("@OrderID", SqlDbType.Int).Value = billsModel.OrderID;
                command.Parameters.Add("@UserID", SqlDbType.Int).Value = billsModel.UserID;
                command.ExecuteNonQuery();
                return RedirectToAction("BillsTable"); 
            }
            return View("Bills_Form", billsModel);
        }
    }
}
