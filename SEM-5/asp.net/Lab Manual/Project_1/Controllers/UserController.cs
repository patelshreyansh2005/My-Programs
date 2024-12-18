using Microsoft.AspNetCore.Mvc;
using ClosedXML.Excel;
using Project_1.Models;
using System.Data.SqlClient;
using System.Data;
using Microsoft.Extensions.Configuration;
using System.IO;

namespace Project_1.Controllers
{
    public class UserController : Controller
    {
        private IConfiguration configuration;

        public UserController(IConfiguration _configuration)
        {
            configuration = _configuration;
        }

        public IActionResult UserList()
        {
            string connectionString = this.configuration.GetConnectionString("ConnectionString");
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            SqlCommand command = connection.CreateCommand();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "PR_User_SelectAll";
            SqlDataReader reader = command.ExecuteReader();
            DataTable table = new DataTable();
            table.Load(reader);
            return View(table);
        }

        public IActionResult UserDelete(int UserID)
        {
            try
            {
                string connectionString = this.configuration.GetConnectionString("ConnectionString");
                SqlConnection connection = new SqlConnection(connectionString);
                connection.Open();
                SqlCommand command = connection.CreateCommand();
                command.CommandType = CommandType.StoredProcedure;
                command.CommandText = "PR_User_DeleteByPK";
                command.Parameters.Add("@UserID", SqlDbType.Int).Value = UserID;
                command.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                TempData["ErrorMessage"] = ex.Message;
                Console.WriteLine(ex.ToString());
            }
            return RedirectToAction("UserList");
        }

        public IActionResult AddUser()
        {
            return View();
        }

        public IActionResult UserSave(UserModel user)
        {
            if (ModelState.IsValid)
            {
                string connectionString = configuration.GetConnectionString("ConnectionString");
                SqlConnection connection = new SqlConnection(connectionString);
                connection.Open();
                SqlCommand command = connection.CreateCommand();
                command.CommandType = CommandType.StoredProcedure;

                if (user.UserID != null)
                {
                    command.CommandText = "PR_User_UpdateByPK";
                    command.Parameters.AddWithValue("@UserID", user.UserID);
                }
                else
                {
                    command.CommandText = "PR_User_Insert";
                }

                command.Parameters.AddWithValue("@UserName", user.UserName);
                command.Parameters.AddWithValue("@Email", user.Email);
                command.Parameters.AddWithValue("@Password", user.Password);
                command.Parameters.AddWithValue("@MobileNo", user.MobileNo);
                command.Parameters.AddWithValue("@Address", user.Address);
                command.Parameters.AddWithValue("@IsActive", user.IsActive);

                command.ExecuteNonQuery();
                connection.Close();

                return RedirectToAction("UserList");
            }

            return View("AddUser", user);
        }

        public IActionResult ExportExcel()
        {
            string connectionString = configuration.GetConnectionString("ConnectionString");
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            SqlCommand command = connection.CreateCommand();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "PR_User_SelectAll";
            SqlDataReader reader = command.ExecuteReader();
            DataTable table = new DataTable();
            table.Load(reader);

            using (XLWorkbook workbook = new XLWorkbook())
            {
                var worksheet = workbook.Worksheets.Add("UserList");
                worksheet.Cell(1, 1).Value = "UserID";
                worksheet.Cell(1, 2).Value = "UserName";
                worksheet.Cell(1, 3).Value = "Email";
                worksheet.Cell(1, 4).Value = "Password";
                worksheet.Cell(1, 5).Value = "MobileNo";
                worksheet.Cell(1, 6).Value = "Address";
                worksheet.Cell(1, 7).Value = "isActive";

                int row = 2;
                foreach (DataRow dataRow in table.Rows)
                {
                    worksheet.Cell(row, 1).Value = Convert.ToString(dataRow["UserID"]);
                    worksheet.Cell(row, 2).Value = Convert.ToString(dataRow["UserName"]);
                    worksheet.Cell(row, 3).Value = Convert.ToString(dataRow["Email"]);
                    worksheet.Cell(row, 4).Value = Convert.ToString(dataRow["Password"]);
                    worksheet.Cell(row, 5).Value = Convert.ToString(dataRow["MobileNo"]);
                    worksheet.Cell(row, 6).Value = Convert.ToString(dataRow["Address"]);
                    worksheet.Cell(row, 7).Value = Convert.ToString(dataRow["isActive"]);
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

        public IActionResult UserEdit(int UserID)
        {

            string connectionString = this.configuration.GetConnectionString("ConnectionString");
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            SqlCommand command = connection.CreateCommand();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "PR_User_SelectByPK";
            command.Parameters.AddWithValue("@UserID", UserID);
            SqlDataReader reader = command.ExecuteReader();

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
            connection.Close();
            return View("AddUser", user);
        }

    }
}
