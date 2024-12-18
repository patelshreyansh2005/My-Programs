using Microsoft.AspNetCore.Mvc;
using ClosedXML.Excel;
using Project_1.Models;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using Microsoft.Extensions.Logging;

namespace Project_1.Controllers
{
 [CheckAccess]
    public class OrderController : Controller
    {
        private readonly IConfiguration configuration;
        private readonly ILogger<OrderController> _logger; // Inject ILogger

        public OrderController(IConfiguration _configuration, ILogger<OrderController> logger)
        {
            configuration = _configuration;
            _logger = logger; // Assign logger
        }

        // Abstracted method to get SQL connection
        private SqlConnection GetSqlConnection()
        {
            string connectionString = configuration.GetConnectionString("ConnectionString");
            return new SqlConnection(connectionString);
        }

        // Display the list of orders
        public IActionResult OrderList()
        {
            try
            {
                using (var connection = GetSqlConnection())
                {
                    connection.Open();
                    var command = new SqlCommand("PR_Order_SelectAll", connection)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    var reader = command.ExecuteReader();
                    var table = new DataTable();
                    table.Load(reader);
                    return View(table);
                }
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "An error occurred while fetching the order list.");
                TempData["ErrorMessage"] = "There was an issue retrieving the order list. Please try again later.";
                return RedirectToAction("Error");
            }
        }

        // Export orders to Excel
        public IActionResult ExportExcel()
        {
            try
            {
                using (var connection = GetSqlConnection())
                {
                    connection.Open();
                    var command = new SqlCommand("PR_Order_SelectAll", connection)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    var reader = command.ExecuteReader();
                    var table = new DataTable();
                    table.Load(reader);

                    using (var workbook = new XLWorkbook())
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
                            TempData["SuccessMessage"] = "Excel exported successfully.";
                            return File(content, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", "OrderList.xlsx");
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "An error occurred while exporting the Excel file.");
                TempData["ErrorMessage"] = "There was an issue exporting the order list. Please try again later.";
                return RedirectToAction("OrderList");
            }
        }

        // Delete an order by ID
        public IActionResult OrderDelete(int OrderID)
        {
            try
            {
                using (var connection = GetSqlConnection())
                {
                    connection.Open();
                    var command = new SqlCommand("PR_Order_DeleteByPK", connection)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    command.Parameters.Add("@OrderID", SqlDbType.Int).Value = OrderID;
                    command.ExecuteNonQuery();
                }
                TempData["SuccessMessage"] = "Order deleted successfully.";
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, $"An error occurred while deleting order with ID {OrderID}.");
                TempData["ErrorMessage"] = "Failed to delete the order. Please try again later.";
            }
            return RedirectToAction("OrderList");
        }

        // Add a new order
        public IActionResult AddOrder()
        {
            try
            {
                CustomerDropDown();
                UserDropdown();
                ViewBag.Action = "Add"; // Set Action to Add
                return View();
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "An error occurred while loading the add order page.");
                TempData["ErrorMessage"] = "There was an issue loading the form. Please try again later.";
                return RedirectToAction("OrderList");
            }
        }

        // Save or Update Order (Add or Edit based on OrderID)
        public IActionResult OrderSave(OrderModel order)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    using (var connection = GetSqlConnection())
                    {
                        connection.Open();
                        var command = connection.CreateCommand();
                        command.CommandType = CommandType.StoredProcedure;

                        if (order.OrderID > 0) // Edit operation
                        {
                            command.CommandText = "PR_Order_UpdateByPK";
                            command.Parameters.AddWithValue("@OrderID", order.OrderID);
                            TempData["SuccessMessage"] = "Order updated successfully.";
                        }
                        else // Add operation
                        {
                            command.CommandText = "PR_Order_Insert";
                            TempData["SuccessMessage"] = "Order added successfully.";
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
                catch (Exception ex)
                {
                    _logger.LogError(ex, "An error occurred while saving the order.");
                    TempData["ErrorMessage"] = "Failed to save the order. Please try again later.";
                    return View("AddOrder", order);
                }
            }

            TempData["ErrorMessage"] = "Invalid input data. Please check your entries.";
            CustomerDropDown();
            UserDropdown();
            return View("AddOrder", order);
        }

        // Edit an existing order
        public IActionResult OrderEdit(int OrderID)
        {
            try
            {
                using (var connection = GetSqlConnection())
                {
                    connection.Open();
                    var command = new SqlCommand("PR_Order_SelectByPK", connection)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    command.Parameters.AddWithValue("@OrderID", OrderID);
                    var reader = command.ExecuteReader();

                    OrderModel order = null;
                    if (reader.Read())
                    {
                        order = new OrderModel
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
                    UserDropdown();
                    ViewBag.Action = "Edit"; // Set Action to Edit
                    return View("AddOrder", order);
                }
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, $"An error occurred while editing order with ID {OrderID}.");
                TempData["ErrorMessage"] = "There was an issue loading the order for editing. Please try again later.";
                return RedirectToAction("OrderList");
            }
        }

        // Populate Customer Dropdown
        private void CustomerDropDown()
        {
            try
            {
                using (var connection = GetSqlConnection())
                {
                    connection.Open();
                    var command = new SqlCommand("PR_Customer_DropDown", connection)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    var reader = command.ExecuteReader();
                    var dataTable = new DataTable();
                    dataTable.Load(reader);
                    var customerList = new List<CustomerDropDownModel>();

                    foreach (DataRow data in dataTable.Rows)
                    {
                        var customerDropDownModel = new CustomerDropDownModel
                        {
                            CustomerID = Convert.ToInt32(data["CustomerID"]),
                            CustomerName = data["CustomerName"].ToString()
                        };
                        customerList.Add(customerDropDownModel);
                    }
                    ViewBag.CustomerList = customerList;
                }
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "An error occurred while populating the customer dropdown.");
                TempData["ErrorMessage"] = "Failed to load customer data. Please try again later.";
            }
        }

        // Populate User Dropdown
        private void UserDropdown()
        {
            try
            {
                using (var connection = GetSqlConnection())
                {
                    connection.Open();
                    var command = new SqlCommand("PR_User_DropDown", connection)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    var reader = command.ExecuteReader();
                    var dataTable = new DataTable();
                    dataTable.Load(reader);
                    var userList = new List<UserDropDownModel>();

                    foreach (DataRow data in dataTable.Rows)
                    {
                        var userDropDownModel = new UserDropDownModel
                        {
                            UserID = Convert.ToInt32(data["UserID"]),
                            UserName = data["UserName"].ToString()
                        };
                        userList.Add(userDropDownModel);
                    }
                    ViewBag.UserList = userList;
                }
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "An error occurred while populating the user dropdown.");
                TempData["ErrorMessage"] = "Failed to load user data. Please try again later.";
            }
        }
    }
}
