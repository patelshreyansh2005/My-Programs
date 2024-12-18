using Microsoft.AspNetCore.Mvc;
using ClosedXML.Excel;
using Project_1.Models;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace Project_1.Controllers
{
    [CheckAccess]
    public class OrderDetailController : Controller
    {
        private IConfiguration configuration;

        public OrderDetailController(IConfiguration _configuration)
        {
            configuration = _configuration;
        }

        public IActionResult OrderDetailList()
        {
            string connectionString = this.configuration.GetConnectionString("ConnectionString");
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                SqlCommand command = connection.CreateCommand();
                command.CommandType = CommandType.StoredProcedure;
                command.CommandText = "PR_OrderDetail_SelectAll";
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
                command.CommandText = "PR_OrderDetail_SelectAll";
                SqlDataReader reader = command.ExecuteReader();
                DataTable table = new DataTable();
                table.Load(reader);

                using (XLWorkbook workbook = new XLWorkbook())
                {
                    var worksheet = workbook.Worksheets.Add("OrderDetailList");
                    worksheet.Cell(1, 1).Value = "OrderDetailID";
                    worksheet.Cell(1, 2).Value = "OrderID";
                    worksheet.Cell(1, 3).Value = "ProductID";
                    worksheet.Cell(1, 4).Value = "Quantity";
                    worksheet.Cell(1, 5).Value = "Amount";
                    worksheet.Cell(1, 6).Value = "TotalAmount";
                    worksheet.Cell(1, 7).Value = "UserName";

                    int row = 2;
                    foreach (DataRow dataRow in table.Rows)
                    {
                        worksheet.Cell(row, 1).Value = Convert.ToString(dataRow["OrderDetailID"]);
                        worksheet.Cell(row, 2).Value = Convert.ToString(dataRow["OrderID"]);
                        worksheet.Cell(row, 3).Value = Convert.ToString(dataRow["ProductID"]);
                        worksheet.Cell(row, 4).Value = Convert.ToInt32(dataRow["Quantity"]);
                        worksheet.Cell(row, 5).Value = Convert.ToDecimal(dataRow["Amount"]).ToString("F2");
                        worksheet.Cell(row, 6).Value = Convert.ToDecimal(dataRow["TotalAmount"]).ToString("F2");
                        worksheet.Cell(row, 7).Value = Convert.ToString(dataRow["UserName"]);
                        row++;
                    }

                    using (var stream = new MemoryStream())
                    {
                        workbook.SaveAs(stream);
                        var content = stream.ToArray();
                        return File(content, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", "OrderDetailList.xlsx");
                    }
                }
            }
        }

        public IActionResult OrderDetailDelete(int OrderDetailID)
        {
            try
            {
                string connectionString = this.configuration.GetConnectionString("ConnectionString");
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    SqlCommand command = connection.CreateCommand();
                    command.CommandType = CommandType.StoredProcedure;
                    command.CommandText = "PR_OrderDetail_DeleteByPK";
                    command.Parameters.Add("@OrderDetailID", SqlDbType.Int).Value = OrderDetailID;
                    command.ExecuteNonQuery();
                }
                TempData["SuccessMessage"] = "Order detail deleted successfully.";
            }
            catch (Exception ex)
            {
                TempData["ErrorMessage"] = $"Error occurred while deleting order detail: {ex.Message}";
                Console.WriteLine(ex.ToString());
            }
            return RedirectToAction("OrderDetailList");
        }

        public IActionResult AddOrderDetail()
        {
            PopulateDropdowns();  // Populate all dropdowns
            ViewBag.FormTitle = "Add Order Detail";
            return View();
        }

        [HttpPost]
        public IActionResult OrderDetailSave(OrderDetailModel orderDetail)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    string connectionString = configuration.GetConnectionString("ConnectionString");
                    using (SqlConnection connection = new SqlConnection(connectionString))
                    {
                        connection.Open();
                        SqlCommand command = connection.CreateCommand();
                        command.CommandType = CommandType.StoredProcedure;

                        if (orderDetail.OrderDetailID != null)
                        {
                            command.CommandText = "PR_OrderDetail_UpdateByPK";
                            command.Parameters.AddWithValue("@OrderDetailID", orderDetail.OrderDetailID);
                        }
                        else
                        {
                            command.CommandText = "PR_OrderDetail_Insert";
                        }

                        command.Parameters.AddWithValue("@OrderID", orderDetail.OrderID);
                        command.Parameters.AddWithValue("@ProductID", orderDetail.ProductID);
                        command.Parameters.AddWithValue("@Quantity", orderDetail.Quantity);
                        command.Parameters.AddWithValue("@Amount", orderDetail.Amount);
                        command.Parameters.AddWithValue("@TotalAmount", orderDetail.TotalAmount);
                        command.Parameters.AddWithValue("@UserID", orderDetail.UserID);
                        command.ExecuteNonQuery();
                    }

                    TempData["SuccessMessage"] = "Order detail saved successfully.";
                    return RedirectToAction("OrderDetailList");
                }
                catch (Exception ex)
                {
                    TempData["ErrorMessage"] = $"Error occurred while saving order detail: {ex.Message}";
                    Console.WriteLine(ex.ToString());
                }
            }

            PopulateDropdowns();  // Ensure dropdowns are populated on validation errors
            ViewBag.FormTitle = "Add Order Detail";
            return View("AddOrderDetail", orderDetail);
        }

        public IActionResult OrderDetailEdit(int OrderDetailID)
        {
            string connectionString = this.configuration.GetConnectionString("ConnectionString");
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                SqlCommand command = connection.CreateCommand();
                command.CommandType = CommandType.StoredProcedure;
                command.CommandText = "PR_OrderDetail_SelectByPK";
                command.Parameters.AddWithValue("@OrderDetailID", OrderDetailID);
                SqlDataReader reader = command.ExecuteReader();

                OrderDetailModel OrderDetail = null;
                if (reader.Read())
                {
                    OrderDetail = new OrderDetailModel
                    {
                        OrderDetailID = Convert.ToInt32(reader["OrderDetailID"]),
                        OrderID = Convert.ToInt32(reader["OrderID"]),
                        ProductID = Convert.ToInt32(reader["ProductID"]),
                        Quantity = Convert.ToInt32(reader["Quantity"]),
                        Amount = Convert.ToDecimal(reader["Amount"]),
                        TotalAmount = Convert.ToDecimal(reader["TotalAmount"]),
                        UserID = Convert.ToInt32(reader["UserID"])
                    };
                }

                PopulateDropdowns();  // Populate all dropdowns
                ViewBag.FormTitle = "Edit Order Detail";
                return View("AddOrderDetail", OrderDetail);
            }
        }

        private void PopulateDropdowns()
        {
            OrderDropdown();
            ProductDropdown();
            userDropdown();
        }

        public void ProductDropdown()
        {
            string connectionString = this.configuration.GetConnectionString("ConnectionString");
            using (SqlConnection connection1 = new SqlConnection(connectionString))
            {
                connection1.Open();
                SqlCommand command1 = connection1.CreateCommand();
                command1.CommandType = CommandType.StoredProcedure;
                command1.CommandText = "PR_Product_DropDown";
                SqlDataReader reader1 = command1.ExecuteReader();
                DataTable dataTable1 = new DataTable();
                dataTable1.Load(reader1);
                List<ProductDropDownModel> ProductList = new List<ProductDropDownModel>();
                foreach (DataRow data in dataTable1.Rows)
                {
                    ProductDropDownModel ProductDropDownModel = new ProductDropDownModel
                    {
                        ProductID = Convert.ToInt32(data["ProductID"]),
                        ProductName = data["ProductName"].ToString()
                    };
                    ProductList.Add(ProductDropDownModel);
                }
                ViewBag.ProductList = ProductList;
            }
        }

        public void OrderDropdown()
        {
            string connectionString = this.configuration.GetConnectionString("ConnectionString");
            using (SqlConnection connection1 = new SqlConnection(connectionString))
            {
                connection1.Open();
                SqlCommand command1 = connection1.CreateCommand();
                command1.CommandType = CommandType.StoredProcedure;
                command1.CommandText = "PR_Order_DropDown";
                SqlDataReader reader1 = command1.ExecuteReader();
                DataTable dataTable1 = new DataTable();
                dataTable1.Load(reader1);
                List<OrderDropDownModel> orderList = new List<OrderDropDownModel>();
                foreach (DataRow data in dataTable1.Rows)
                {
                    OrderDropDownModel orderDropDownModel = new OrderDropDownModel
                    {
                        OrderID = Convert.ToInt32(data["OrderID"]),
                        OrderNumber = data["OrderNumber"].ToString()
                    };
                    orderList.Add(orderDropDownModel);
                }
                ViewBag.OrderList = orderList;
            }
        }

        private void userDropdown()
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
