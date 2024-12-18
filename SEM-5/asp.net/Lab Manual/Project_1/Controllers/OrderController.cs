using Microsoft.AspNetCore.Mvc;
using ClosedXML.Excel;
using Project_1.Models;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace Project_1.Controllers
{
    public class OrderController : Controller
    {
        private IConfiguration configuration;

        public OrderController(IConfiguration _configuration)
        {
            configuration = _configuration;
        }

        public IActionResult OrderList()
        {
            string connectionString = this.configuration.GetConnectionString("ConnectionString");
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                SqlCommand command = connection.CreateCommand();
                command.CommandType = CommandType.StoredProcedure;
                command.CommandText = "PR_Order_SelectAll";
                SqlDataReader reader = command.ExecuteReader();
                DataTable table = new DataTable();
                table.Load(reader);
                return View(table);
            }
        }

        public IActionResult ExportExcel()
        {
            string connectionString = this.configuration.GetConnectionString("ConnectionString");
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                SqlCommand command = connection.CreateCommand();
                command.CommandType = CommandType.StoredProcedure;
                command.CommandText = "PR_Order_SelectAll";
                SqlDataReader reader = command.ExecuteReader();
                DataTable table = new DataTable();
                table.Load(reader);

                using (XLWorkbook workbook = new XLWorkbook())
                {
                    var worksheet = workbook.Worksheets.Add("OrderList");
                    worksheet.Cell(1, 1).Value = "OrderID";
                    worksheet.Cell(1, 2).Value = "OrderDate";
                    worksheet.Cell(1, 3).Value = "CustomerID";
                    worksheet.Cell(1, 4).Value = "PaymentMode";
                    worksheet.Cell(1, 5).Value = "TotalAmount";
                    worksheet.Cell(1, 6).Value = "ShippingAddress";
                    worksheet.Cell(1, 7).Value = "UserName";

                    int row = 2;
                    foreach (DataRow dataRow in table.Rows)
                    {
                        worksheet.Cell(row, 1).Value = Convert.ToString(dataRow["OrderID"]);
                        worksheet.Cell(row, 2).Value = Convert.ToDateTime(dataRow["OrderDate"]).ToString("yyyy-MM-dd");
                        worksheet.Cell(row, 3).Value = Convert.ToString(dataRow["CustomerID"]);
                        worksheet.Cell(row, 4).Value = Convert.ToString(dataRow["PaymentMode"]);
                        worksheet.Cell(row, 5).Value = Convert.ToDecimal(dataRow["TotalAmount"]).ToString("F2");
                        worksheet.Cell(row, 6).Value = Convert.ToString(dataRow["ShippingAddress"]);
                        worksheet.Cell(row, 7).Value = Convert.ToString(dataRow["UserName"]);
                        row++;
                    }

                    using (var stream = new MemoryStream())
                    {
                        workbook.SaveAs(stream);
                        var content = stream.ToArray();
                        return File(content, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", "OrderList.xlsx");
                    }
                }
            }
        }

        public IActionResult OrderDelete(int OrderID)
        {
            try
            {
                string connectionString = this.configuration.GetConnectionString("ConnectionString");
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    SqlCommand command = connection.CreateCommand();
                    command.CommandType = CommandType.StoredProcedure;
                    command.CommandText = "PR_Order_DeleteByPK";
                    command.Parameters.Add("@OrderID", SqlDbType.Int).Value = OrderID;
                    command.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {
                TempData["ErrorMessage"] = ex.Message;
                Console.WriteLine(ex.ToString());
            }
            return RedirectToAction("OrderList");
        }

        public IActionResult AddOrder()
        {
            CustomerDropDown();
            userDropdown();
            return View();
        }

        public IActionResult OrderSave(OrderModel order)
        {
            if (ModelState.IsValid)
            {
                string connectionString = configuration.GetConnectionString("ConnectionString");
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    SqlCommand command = connection.CreateCommand();
                    command.CommandType = CommandType.StoredProcedure;

                    if (order.OrderID > 0)
                    {
                        command.CommandText = "PR_Order_UpdateByPK";
                        command.Parameters.AddWithValue("@OrderID", order.OrderID);
                    }
                    else
                    {
                        command.CommandText = "PR_Order_Insert";
                    }

                    command.Parameters.AddWithValue("@OrderDate", order.OrderDate);
                    command.Parameters.AddWithValue("@OrderNumber", order.OrderNumber);
                    command.Parameters.AddWithValue("@CustomerID", order.CustomerID);
                    command.Parameters.AddWithValue("@PaymentMode", order.PaymentMode);
                    command.Parameters.AddWithValue("@TotalAmount", order.TotalAmount);
                    command.Parameters.AddWithValue("@ShippingAddress", order.ShippingAddress);
                    command.Parameters.AddWithValue("@UserID", order.UserID);

                    command.ExecuteNonQuery();
                }

                return RedirectToAction("OrderList");
            }

            CustomerDropDown();
            userDropdown();
            return View("AddOrder", order);
        }

        public IActionResult OrderEdit(int OrderID)
        {
            string connectionString = this.configuration.GetConnectionString("ConnectionString");
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            SqlCommand command = connection.CreateCommand();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "PR_Order_SelectByPK";
            command.Parameters.AddWithValue("@OrderID", OrderID);
            SqlDataReader reader = command.ExecuteReader();

            OrderModel Order = null;
            if (reader.Read())
            {
                Order = new OrderModel
                {
                    OrderID = Convert.ToInt32(reader["OrderID"]),
                    OrderNumber = Convert.ToInt32(reader["OrderNumber"]),
                    OrderDate = Convert.ToDateTime(reader["OrderDate"]),
                    CustomerID = Convert.ToInt32(reader["CustomerID"]),
                    PaymentMode = reader["PaymentMode"].ToString(),
                    TotalAmount = Convert.ToDecimal(reader["TotalAmount"]),
                    ShippingAddress = reader["ShippingAddress"].ToString(),
                    UserID = Convert.ToInt32(reader["UserID"])
                };
            }

            CustomerDropDown();
            userDropdown();
            return View("AddOrder", Order);
        }

        private void CustomerDropDown()
        {
            string connectionString = this.configuration.GetConnectionString("ConnectionString");
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                SqlCommand command = connection.CreateCommand();
                command.CommandType = CommandType.StoredProcedure;
                command.CommandText = "PR_Customer_DropDown";
                SqlDataReader reader = command.ExecuteReader();
                DataTable dataTable = new DataTable();
                dataTable.Load(reader);
                List<CustomerDropDownModel> customerList = new List<CustomerDropDownModel>();
                foreach (DataRow data in dataTable.Rows)
                {
                    CustomerDropDownModel customerDropDownModel = new CustomerDropDownModel
                    {
                        CustomerID = Convert.ToInt32(data["CustomerID"]),
                        CustomerName = data["CustomerName"].ToString()
                    };
                    customerList.Add(customerDropDownModel);
                }
                ViewBag.CustomerList = customerList;
            }
        }

        public void userDropdown()
        {
            string connectionString = this.configuration.GetConnectionString("ConnectionString");
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                SqlCommand command = connection.CreateCommand();
                command.CommandType = CommandType.StoredProcedure;
                command.CommandText = "PR_User_DropDown";
                SqlDataReader reader = command.ExecuteReader();
                DataTable dataTable = new DataTable();
                dataTable.Load(reader);
                List<UserDropDownModel> userList = new List<UserDropDownModel>();
                foreach (DataRow data in dataTable.Rows)
                {
                    UserDropDownModel userDropDownModel = new UserDropDownModel
                    {
                        UserID = Convert.ToInt32(data["UserID"]),
                        UserName = data["UserName"].ToString()
                    };
                    userList.Add(userDropDownModel);
                }
                ViewBag.userList = userList;
            }
        }
    }
}
