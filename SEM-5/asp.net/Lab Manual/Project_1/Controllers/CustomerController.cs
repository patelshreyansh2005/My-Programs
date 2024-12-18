using ClosedXML.Excel;
using Microsoft.AspNetCore.Mvc;
using Project_1.Models;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace Project_1.Controllers
{
    public class CustomerController : Controller
    {

        private IConfiguration configuration;

        public CustomerController(IConfiguration configuration)
        {
            this.configuration = configuration;
        }

        public IActionResult CustomerList()
        {
            String connectionString = this.configuration.GetConnectionString("connectionString");
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            SqlCommand command = connection.CreateCommand();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "PR_Customer_SelectAll";
            SqlDataReader reader = command.ExecuteReader();
            DataTable table = new DataTable();
            table.Load(reader);
            return View(table);
        }

        public void userDropdown()
        {
            string connectionString = this.configuration.GetConnectionString("ConnectionString");
            SqlConnection connection1 = new SqlConnection(connectionString);
            connection1.Open();
            SqlCommand command1 = connection1.CreateCommand();
            command1.CommandType = System.Data.CommandType.StoredProcedure;
            command1.CommandText = "PR_User_DropDown";
            SqlDataReader reader1 = command1.ExecuteReader();
            DataTable dataTable1 = new DataTable();
            dataTable1.Load(reader1);
            List<UserDropDownModel> userList = new List<UserDropDownModel>();
            foreach (DataRow data in dataTable1.Rows)
            {
                UserDropDownModel UserDropDownModel = new UserDropDownModel();
                UserDropDownModel.UserID = Convert.ToInt32(data["UserID"]);
                UserDropDownModel.UserName = data["UserName"].ToString();
                userList.Add(UserDropDownModel);
            }
            ViewBag.userList = userList;
        }
        public IActionResult ExportExcel()
        {
            string connectionString = configuration.GetConnectionString("ConnectionString");
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            SqlCommand command = connection.CreateCommand();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "PR_Customer_SelectAll";
            SqlDataReader reader = command.ExecuteReader();
            DataTable table = new DataTable();
            table.Load(reader);

            using (XLWorkbook workbook = new XLWorkbook())
            {
                var worksheet = workbook.Worksheets.Add("CustomerList");
                worksheet.Cell(1, 1).Value = "CustomerID";
                worksheet.Cell(1, 2).Value = "CustomerName";
                worksheet.Cell(1, 3).Value = "HomeAddress";
                worksheet.Cell(1, 4).Value = "Email";
                worksheet.Cell(1, 5).Value = "MobileNo";
                worksheet.Cell(1, 6).Value = "GST No";
                worksheet.Cell(1, 7).Value = "CityName";
                worksheet.Cell(1, 8).Value = "PinCode";
                worksheet.Cell(1, 9).Value = "NetAmount";
                worksheet.Cell(1, 10).Value = "UserName";

                int row = 2;
                foreach (DataRow dataRow in table.Rows)
                {
                    worksheet.Cell(row, 1).Value = Convert.ToString(dataRow["CustomerID"]);
                    worksheet.Cell(row, 2).Value = Convert.ToString(dataRow["CustomerName"]);
                    worksheet.Cell(row, 3).Value = Convert.ToString(dataRow["HomeAddress"]);
                    worksheet.Cell(row, 4).Value = Convert.ToString(dataRow["Email"]);
                    worksheet.Cell(row, 5).Value = Convert.ToString(dataRow["MobileNo"]);
                    worksheet.Cell(row, 6).Value = Convert.ToString(dataRow["GST_NO"]);
                    worksheet.Cell(row, 7).Value = Convert.ToString(dataRow["CityName"]);
                    worksheet.Cell(row, 8).Value = Convert.ToString(dataRow["PinCode"]);
                    worksheet.Cell(row, 9).Value = Convert.ToDecimal(dataRow["NetAmount"]).ToString("F2");
                    worksheet.Cell(row, 10).Value = Convert.ToString(dataRow["UserName"]);
                    row++;
                }

                using (var stream = new MemoryStream())
                {
                    workbook.SaveAs(stream);
                    var content = stream.ToArray();
                    return File(content, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", "CustomerList.xlsx");
                }
            }
        }

        public IActionResult CustomerDelete(int CustomerID)
        {
            try
            {
                string connectionString = this.configuration.GetConnectionString("ConnectionString");
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    SqlCommand command = connection.CreateCommand();
                    command.CommandType = CommandType.StoredProcedure;
                    command.CommandText = "PR_Customer_DeleteByPK";
                    command.Parameters.Add("@CustomerID", SqlDbType.Int).Value = CustomerID;
                    command.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {
                TempData["ErrorMessage"] = ex.Message;
                Console.WriteLine(ex.ToString());
            }
            return RedirectToAction("CustomerList");
        }

        public IActionResult AddCustomer()
        {
            userDropdown();
            return View();
        }

        public IActionResult CustomerEdit(int CustomerID)
        {
            string connectionString = this.configuration.GetConnectionString("ConnectionString");
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            SqlCommand command = connection.CreateCommand();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "PR_Customer_SelectByPK";
            command.Parameters.AddWithValue("@CustomerID", CustomerID);
            SqlDataReader reader = command.ExecuteReader();

            CustomerModel Customer = null;
            if (reader.Read())
            {
                Customer = new CustomerModel
                {
                    CustomerID = Convert.ToInt32(reader["CustomerID"]),
                    CustomerName = reader["CustomerName"].ToString(),
                    MobileNo = reader["MobileNo"].ToString(),
                    Email = reader["Email"].ToString(),
                    GST_NO = reader["GST_NO"].ToString(),
                    CityName = reader["CityName"].ToString(),
                    PinCode = reader["Pincode"].ToString(),
                    HomeAddress = reader["HomeAddress"].ToString(),
                    NetAmount = Convert.ToInt32(reader["NetAmount"]),
                    UserID = Convert.ToInt32(reader["UserID"])
                };
            }

            userDropdown();

            return View("AddCustomer", Customer);
        }


        [HttpPost]

        public IActionResult CustomerSave(CustomerModel Customer)
        {
            if (ModelState.IsValid)
            {
                String ConnectionString = configuration.GetConnectionString("ConnectionString");
                SqlConnection Connection = new SqlConnection(ConnectionString);
                Connection.Open();
                SqlCommand command = Connection.CreateCommand();
                command.CommandType = CommandType.StoredProcedure;

                if (Customer.CustomerID != null)
                {
                    command.CommandText = "PR_Customer_UpdateByPK";
                    command.Parameters.AddWithValue("@CustomerID", Customer.CustomerID);
                }
                else
                {
                    command.CommandText = "PR_Customer_Insert";
                }

                command.Parameters.AddWithValue("@CustomerName", Customer.CustomerName);
                command.Parameters.AddWithValue("@HomeAddress", Customer.HomeAddress);
                command.Parameters.AddWithValue("@Email", Customer.Email);
                command.Parameters.AddWithValue("@MobileNo", Customer.MobileNo);
                command.Parameters.AddWithValue("@GST_NO", Customer.GST_NO);
                command.Parameters.AddWithValue("@CityName", Customer.CityName);
                command.Parameters.AddWithValue("@PinCode", Customer.PinCode);
                command.Parameters.AddWithValue("@NetAmount", Customer.NetAmount);
                command.Parameters.AddWithValue("@UserID", Customer.UserID);
                command.ExecuteNonQuery();

                return RedirectToAction("CustomerList");
            }

            userDropdown();
            return View("AddCustomer", Customer);
        }
    }
}

