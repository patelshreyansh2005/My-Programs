using ClosedXML.Excel;
using Microsoft.AspNetCore.Mvc;
using Project_1.Models;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using Microsoft.Extensions.Logging;

namespace Project_1.Controllers
{
 [CheckAccess]
    public class CustomerController : Controller
    {
        private readonly IConfiguration _configuration;
        private readonly ILogger<CustomerController> _logger;

        public CustomerController(IConfiguration configuration, ILogger<CustomerController> logger)
        {
            _configuration = configuration;
            _logger = logger;
        }

        public IActionResult CustomerList()
        {
            try
            {
                string connectionString = _configuration.GetConnectionString("ConnectionString");
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    SqlCommand command = connection.CreateCommand();
                    command.CommandType = CommandType.StoredProcedure;
                    command.CommandText = "PR_Customer_SelectAll";
                    SqlDataReader reader = command.ExecuteReader();
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return View(table);
                }
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Error retrieving customer list.");
                TempData["ErrorMessage"] = "An error occurred while retrieving the customer list. Please try again later.";
                return View("Error");
            }
        }

        public IActionResult ExportExcel()
        {
            try
            {
                string connectionString = _configuration.GetConnectionString("ConnectionString");
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
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
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Error exporting customer data to Excel.");
                TempData["ErrorMessage"] = "An error occurred while exporting data. Please try again later.";
                return RedirectToAction("CustomerList");
            }
        }

        public IActionResult CustomerDelete(int customerID)
        {
            try
            {
                string connectionString = _configuration.GetConnectionString("ConnectionString");
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    SqlCommand command = connection.CreateCommand();
                    command.CommandType = CommandType.StoredProcedure;
                    command.CommandText = "PR_Customer_DeleteByPK";
                    command.Parameters.Add("@CustomerID", SqlDbType.Int).Value = customerID;
                    command.ExecuteNonQuery();
                }
                TempData["SuccessMessage"] = "Customer deleted successfully.";
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Error deleting customer.");
                TempData["ErrorMessage"] = "An error occurred while deleting the customer. Please try again later.";
            }
            return RedirectToAction("CustomerList");
        }

        public IActionResult AddCustomer()
        {
            try
            {
                userDropdown();
                ViewBag.PageTitle = "Add Customer";
                ViewBag.ButtonText = "Submit";
                return View();
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Error loading Add Customer page.");
                TempData["ErrorMessage"] = "An error occurred while loading the Add Customer page. Please try again later.";
                return View("Error");
            }
        }

        public IActionResult CustomerEdit(int customerID)
        {
            try
            {
                string connectionString = _configuration.GetConnectionString("ConnectionString");
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    SqlCommand command = connection.CreateCommand();
                    command.CommandType = CommandType.StoredProcedure;
                    command.CommandText = "PR_Customer_SelectByPK";
                    command.Parameters.AddWithValue("@CustomerID", customerID);
                    SqlDataReader reader = command.ExecuteReader();

                    CustomerModel customer = null;
                    if (reader.Read())
                    {
                        customer = new CustomerModel
                        {
                            CustomerID = Convert.ToInt32(reader["CustomerID"]),
                            CustomerName = reader["CustomerName"].ToString(),
                            MobileNo = reader["MobileNo"].ToString(),
                            Email = reader["Email"].ToString(),
                            GST_NO = reader["GST_NO"].ToString(),
                            CityName = reader["CityName"].ToString(),
                            PinCode = reader["Pincode"].ToString(),
                            HomeAddress = reader["HomeAddress"].ToString(),
                            NetAmount = Convert.ToDouble(reader["NetAmount"]), // Adjusted to Decimal
                            UserID = Convert.ToInt32(reader["UserID"])
                        };
                    }

                    userDropdown();
                    ViewBag.PageTitle = "Edit Customer";
                    ViewBag.ButtonText = "Update";
                    return View("AddCustomer", customer);
                }
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Error loading Customer Edit page.");
                TempData["ErrorMessage"] = "An error occurred while loading the Edit Customer page. Please try again later.";
                return View("Error");
            }
        }

        [HttpPost]
        public IActionResult CustomerSave(CustomerModel customer)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    string connectionString = _configuration.GetConnectionString("ConnectionString");
                    using (SqlConnection connection = new SqlConnection(connectionString))
                    {
                        connection.Open();
                        SqlCommand command = connection.CreateCommand();
                        command.CommandType = CommandType.StoredProcedure;

                        if (customer.CustomerID != null)
                        {
                            command.CommandText = "PR_Customer_UpdateByPK";
                            command.Parameters.AddWithValue("@CustomerID", customer.CustomerID);
                        }
                        else
                        {
                            command.CommandText = "PR_Customer_Insert";
                        }

                        command.Parameters.AddWithValue("@CustomerName", customer.CustomerName);
                        command.Parameters.AddWithValue("@HomeAddress", customer.HomeAddress);
                        command.Parameters.AddWithValue("@Email", customer.Email);
                        command.Parameters.AddWithValue("@MobileNo", customer.MobileNo);
                        command.Parameters.AddWithValue("@GST_NO", customer.GST_NO);
                        command.Parameters.AddWithValue("@CityName", customer.CityName);
                        command.Parameters.AddWithValue("@PinCode", customer.PinCode);
                        command.Parameters.AddWithValue("@NetAmount", customer.NetAmount);
                        command.Parameters.AddWithValue("@UserID", customer.UserID);
                        command.ExecuteNonQuery();
                    }
                    TempData["SuccessMessage"] = "Customer saved successfully.";
                    return RedirectToAction("CustomerList");
                }
                catch (Exception ex)
                {
                    _logger.LogError(ex, "Error saving customer.");
                    TempData["ErrorMessage"] = "An error occurred while saving the customer. Please try again later.";
                }
            }

            userDropdown();
            return View("AddCustomer", customer);
        }

        private void userDropdown()
        {
            try
            {
                string connectionString = _configuration.GetConnectionString("ConnectionString");
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
            catch (Exception ex)
            {
                _logger.LogError(ex, "Error loading user dropdown.");
                TempData["ErrorMessage"] = "An error occurred while loading the user dropdown. Please try again later.";
           
            }
        }
    }
}
