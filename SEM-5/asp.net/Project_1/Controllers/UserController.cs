using Microsoft.AspNetCore.Mvc;
using ClosedXML.Excel;
using Project_1.Models;
using System.Data.SqlClient;
using System.Data;
using Microsoft.Extensions.Configuration;
using System.IO;
using Microsoft.Extensions.Logging;

namespace Project_1.Controllers
{
    
    public class UserController : Controller
    {
        private readonly IConfiguration _configuration;
        private readonly ILogger<UserController> _logger;

        public UserController(IConfiguration configuration, ILogger<UserController> logger)
        {
            _configuration = configuration;
            _logger = logger;
        }

        // Display list of users
        public IActionResult UserList()
        {
            try
            {
                using (var connection = new SqlConnection(_configuration.GetConnectionString("ConnectionString")))
                {
                    connection.Open();
                    var command = new SqlCommand("PR_User_SelectAll", connection)
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
                _logger.LogError(ex, "Error fetching user list.");
                TempData["ErrorMessage"] = "There was an issue retrieving the user list. Please try again later.";
                return RedirectToAction("Error"); // Consider having an error page or handle this differently
            }
        }

        // Delete a user by UserID
        public IActionResult UserDelete(int UserID)
        {
            try
            {
                using (var connection = new SqlConnection(_configuration.GetConnectionString("ConnectionString")))
                {
                    connection.Open();
                    var command = new SqlCommand("PR_User_DeleteByPK", connection)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    command.Parameters.AddWithValue("@UserID", UserID);
                    command.ExecuteNonQuery();
                }

                TempData["SuccessMessage"] = "User deleted successfully.";
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, $"Error deleting user with ID {UserID}.");
                TempData["ErrorMessage"] = "Failed to delete the user. Please try again later.";
            }

            return RedirectToAction("UserList");
        }

        // Show Add User form
        public IActionResult AddUser()
        {
            ViewBag.Action = "Add"; // Flag to indicate form is in 'Add' mode
            return View();
        }

        // Save or update a user
        public IActionResult UserSave(UserModel user)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    using (var connection = new SqlConnection(_configuration.GetConnectionString("ConnectionString")))
                    {
                        connection.Open();
                        var command = new SqlCommand
                        {
                            CommandType = CommandType.StoredProcedure,
                            Connection = connection
                        };

                        if (user.UserID != null && user.UserID > 0) // Edit mode
                        {
                            command.CommandText = "PR_User_UpdateByPK";
                            command.Parameters.AddWithValue("@UserID", user.UserID);
                            TempData["SuccessMessage"] = "User updated successfully.";
                        }
                        else // Add mode
                        {
                            command.CommandText = "PR_User_Insert";
                            TempData["SuccessMessage"] = "User added successfully.";
                        }

                        command.Parameters.AddWithValue("@UserName", user.UserName);
                        command.Parameters.AddWithValue("@Email", user.Email);
                        command.Parameters.AddWithValue("@Password", user.Password);
                        command.Parameters.AddWithValue("@MobileNo", user.MobileNo);
                        command.Parameters.AddWithValue("@Address", user.Address);
                        command.Parameters.AddWithValue("@IsActive", user.IsActive);

                        command.ExecuteNonQuery();
                    }

                    return RedirectToAction("UserList");
                }
                catch (Exception ex)
                {
                    _logger.LogError(ex, "Error saving user.");
                    TempData["ErrorMessage"] = "There was an issue saving the user. Please try again later.";
                }
            }
            else
            {
                TempData["ErrorMessage"] = "Invalid data. Please check your input.";
            }

            // If there are validation errors, return to the form
            ViewBag.Action = user.UserID != null ? "Edit" : "Add";
            return View("AddUser", user);
        }

        // Export user list to Excel
        public IActionResult ExportExcel()
        {
            try
            {
                using (var connection = new SqlConnection(_configuration.GetConnectionString("ConnectionString")))
                {
                    connection.Open();
                    var command = new SqlCommand("PR_User_SelectAll", connection)
                    {
                        CommandType = CommandType.StoredProcedure
                    };

                    var reader = command.ExecuteReader();
                    var table = new DataTable();
                    table.Load(reader);

                    using (var workbook = new XLWorkbook())
                    {
                        var worksheet = workbook.Worksheets.Add("UserList");

                        worksheet.Cell(1, 1).Value = "UserID";
                        worksheet.Cell(1, 2).Value = "UserName";
                        worksheet.Cell(1, 3).Value = "Email";
                        worksheet.Cell(1, 4).Value = "Password";
                        worksheet.Cell(1, 5).Value = "MobileNo";
                        worksheet.Cell(1, 6).Value = "Address";
                        worksheet.Cell(1, 7).Value = "IsActive";

                        int row = 2;
                        foreach (DataRow dataRow in table.Rows)
                        {
                            worksheet.Cell(row, 1).Value = Convert.ToString(dataRow["UserID"]);
                            worksheet.Cell(row, 2).Value = Convert.ToString(dataRow["UserName"]);
                            worksheet.Cell(row, 3).Value = Convert.ToString(dataRow["Email"]);
                            worksheet.Cell(row, 4).Value = Convert.ToString(dataRow["Password"]);
                            worksheet.Cell(row, 5).Value = Convert.ToString(dataRow["MobileNo"]);
                            worksheet.Cell(row, 6).Value = Convert.ToString(dataRow["Address"]);
                            worksheet.Cell(row, 7).Value = Convert.ToString(dataRow["IsActive"]);
                            row++;
                        }

                        using (var stream = new MemoryStream())
                        {
                            workbook.SaveAs(stream);
                            var content = stream.ToArray();
                            return File(content, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", "UserList.xlsx");
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Error exporting user list to Excel.");
                TempData["ErrorMessage"] = "Failed to export user list. Please try again later.";
                return RedirectToAction("UserList");
            }
        }

        // Edit user by UserID
        public IActionResult UserEdit(int UserID)
        {
            try
            {
                using (var connection = new SqlConnection(_configuration.GetConnectionString("ConnectionString")))
                {
                    connection.Open();
                    var command = new SqlCommand("PR_User_SelectByPK", connection)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    command.Parameters.AddWithValue("@UserID", UserID);

                    var reader = command.ExecuteReader();

                    UserModel user = null;
                    if (reader.Read())
                    {
                        user = new UserModel
                        {
                            UserID = Convert.ToInt32(reader["UserID"]),
                            UserName = reader["UserName"].ToString(),
                            Email = reader["Email"].ToString(),
                            Password = reader["Password"].ToString(),
                            MobileNo = reader["MobileNo"].ToString(),
                            Address = reader["Address"].ToString(),
                            IsActive = Convert.ToBoolean(reader["IsActive"])
                        };
                    }

                    ViewBag.Action = "Edit"; 
                    return View("AddUser", user);
                }
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, $"Error fetching user with ID {UserID}.");
                TempData["ErrorMessage"] = "There was an issue loading the user for editing. Please try again later.";
                return RedirectToAction("UserList");
            }
        }
        public IActionResult Login()
        {
            return View();
        }
        public IActionResult UserLogin(UserLoginModel userLoginModel)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    string connectionString = this._configuration.GetConnectionString("ConnectionString");

                    using (SqlConnection sqlConnection = new SqlConnection(connectionString))
                    {
                        sqlConnection.Open();

                        using (SqlCommand sqlCommand = sqlConnection.CreateCommand())
                        {
                            sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
                            sqlCommand.CommandText = "PR_User_Login";
                            sqlCommand.Parameters.Add("@UserName", SqlDbType.VarChar).Value = userLoginModel.UserName;
                            sqlCommand.Parameters.Add("@Password", SqlDbType.VarChar).Value = userLoginModel.Password;

                            using (SqlDataReader sqlDataReader = sqlCommand.ExecuteReader())
                            {
                                if (sqlDataReader.HasRows)
                                {
                                    DataTable dataTable = new DataTable();
                                    dataTable.Load(sqlDataReader);

                                    foreach (DataRow dr in dataTable.Rows)
                                    {
                                        HttpContext.Session.SetString("UserID", dr["UserID"].ToString());
                                        HttpContext.Session.SetString("UserName", dr["UserName"].ToString());
                                    }
                                    Console.WriteLine(HttpContext.Session.GetString("UserID"));
                                    Console.WriteLine(HttpContext.Session.GetString("UserName"));
                                    return RedirectToAction("ProductList", "Product");
                                }
                                else
                                {
                                    TempData["ErrorMessage"] = "Invalid login credentials.";
                                    return RedirectToAction("Login");
                                }
                            }
                        }
                    }
                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e);

                TempData["ErrorMessage"] = "An error occurred while trying to log you in. Please try again later.";
            }

            return RedirectToAction("Login");
        }

        public IActionResult Register()
        {
            return View();
        }
        public IActionResult UserRegister(UserRegisterModel userRegisterModel)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    string connectionString = this._configuration.GetConnectionString("ConnectionString");
                    SqlConnection sqlConnection = new SqlConnection(connectionString);
                    sqlConnection.Open();
                    SqlCommand sqlCommand = sqlConnection.CreateCommand();
                    sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
                    sqlCommand.CommandText = "PR_User_Register";
                    sqlCommand.Parameters.Add("@UserName", SqlDbType.VarChar).Value = userRegisterModel.UserName;
                    sqlCommand.Parameters.Add("@Password", SqlDbType.VarChar).Value = userRegisterModel.Password;
                    sqlCommand.Parameters.Add("@Email", SqlDbType.VarChar).Value = userRegisterModel.Email;
                    sqlCommand.Parameters.Add("@MobileNo", SqlDbType.VarChar).Value = userRegisterModel.MobileNo;
                    sqlCommand.Parameters.Add("@Address", SqlDbType.VarChar).Value = userRegisterModel.Address;
                    sqlCommand.ExecuteNonQuery();
                    return RedirectToAction("Login", "User");
                }
            }
            catch (Exception e)
            {
                TempData["ErrorMessage"] = "Already register! Or something else please try again";
                return RedirectToAction("Register");
            }
            return RedirectToAction("Register");
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Logout()
        {
            // Clear the session
            HttpContext.Session.Clear();

           
            return RedirectToAction("Login", "User");
        }

    }
}
