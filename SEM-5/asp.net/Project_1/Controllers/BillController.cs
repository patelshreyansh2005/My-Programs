using Microsoft.AspNetCore.Mvc;
using Project_1.Models;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using ClosedXML.Excel;
using System.IO;

namespace Project_1.Controllers
{
    [CheckAccess]
    public class BillController : Controller
    {
        private IConfiguration configuration;

        public BillController(IConfiguration _configuration)
        {
            configuration = _configuration;
        }

        #region BillsList
        public IActionResult BillsList()
        {
            string connectionString = this.configuration.GetConnectionString("ConnectionString");
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                SqlCommand command = connection.CreateCommand();
                command.CommandType = CommandType.StoredProcedure;
                command.CommandText = "PR_Bills_SelectAll";
                SqlDataReader reader = command.ExecuteReader();
                DataTable table = new DataTable();
                table.Load(reader);
                ViewData["BillsCount"] = table.Rows.Count;
                Console.WriteLine(ViewData["BillsCount"]);
                return View(table);
            }
        }
        #endregion

        #region OrderDropdown
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
        #endregion

        #region UserDropdown
        public void UserDropdown()
        {
            string connectionString = this.configuration.GetConnectionString("ConnectionString");
            using (SqlConnection connection1 = new SqlConnection(connectionString))
            {
                connection1.Open();
                SqlCommand command1 = connection1.CreateCommand();
                command1.CommandType = CommandType.StoredProcedure;
                command1.CommandText = "PR_User_DropDown";
                SqlDataReader reader1 = command1.ExecuteReader();
                DataTable dataTable1 = new DataTable();
                dataTable1.Load(reader1);
                List<UserDropDownModel> userList = new List<UserDropDownModel>();
                foreach (DataRow data in dataTable1.Rows)
                {
                    UserDropDownModel userDropDownModel = new UserDropDownModel
                    {
                        UserID = Convert.ToInt32(data["UserID"]),
                        UserName = data["UserName"].ToString()
                    };
                    userList.Add(userDropDownModel);
                }
                ViewBag.UserList = userList;
            }
        }
        #endregion

        #region BillDelete
        public IActionResult BillDelete(int BillID)
        {
            try
            {
                string connectionString = this.configuration.GetConnectionString("ConnectionString");
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    SqlCommand command = connection.CreateCommand();
                    command.CommandType = CommandType.StoredProcedure;
                    command.CommandText = "PR_Bills_DeleteByPK";
                    command.Parameters.Add("@BillID", SqlDbType.Int).Value = BillID;
                    command.ExecuteNonQuery();
                }
                TempData["SuccessMessage"] = "Bill deleted successfully.";
            }
            catch (Exception ex)
            {
                TempData["ErrorMessage"] = $"Error deleting bill: {ex.Message}";
                Console.WriteLine(ex.ToString());
            }
            return RedirectToAction("BillsList");
        }
        #endregion

        #region AddBill
        public IActionResult AddBill()
        {
            OrderDropdown();
            UserDropdown();
            return View();
        }
        #endregion

        #region BillSave
        [HttpPost]
        public IActionResult BillSave(BillsModel bill)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    string connectionString = this.configuration.GetConnectionString("ConnectionString");
                    using (SqlConnection connection = new SqlConnection(connectionString))
                    {
                        connection.Open();
                        SqlCommand command = connection.CreateCommand();
                        command.CommandType = CommandType.StoredProcedure;

                        if (bill.BillID != null)
                        {
                            command.CommandText = "PR_Bills_UpdateByPK";
                            command.Parameters.AddWithValue("@BillID", bill.BillID);
                        }
                        else
                        {
                            command.CommandText = "PR_Bills_Insert";
                        }

                        command.Parameters.AddWithValue("@BillNumber", bill.BillNumber);
                        command.Parameters.AddWithValue("@BillDate", bill.BillDate);
                        command.Parameters.AddWithValue("@OrderID", bill.OrderID);
                        command.Parameters.AddWithValue("@TotalAmount", bill.TotalAmount);
                        command.Parameters.AddWithValue("@Discount", bill.Discount ?? 0);
                        command.Parameters.AddWithValue("@NetAmount", bill.NetAmount);
                        command.Parameters.AddWithValue("@UserID", bill.UserID);

                        command.ExecuteNonQuery();
                    }
                    TempData["SuccessMessage"] = "Bill saved successfully.";
                    return RedirectToAction("BillsList");
                }
                catch (Exception ex)
                {
                    TempData["ErrorMessage"] = $"Error saving bill: {ex.Message}";
                }
            }

            // Reload dropdowns in case of error
            OrderDropdown();
            UserDropdown();
            return View("AddBill", bill);
        }
        #endregion

        #region EditBill
        public IActionResult EditBill(int BillID)
        {
            OrderDropdown();
            UserDropdown();

            string connectionString = this.configuration.GetConnectionString("ConnectionString");
            BillsModel bill = new BillsModel();

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                SqlCommand command = connection.CreateCommand();
                command.CommandType = CommandType.StoredProcedure;
                command.CommandText = "PR_Bills_SelectByPK";
                command.Parameters.AddWithValue("@BillID", BillID);

                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    bill.BillID = Convert.ToInt32(reader["BillID"]);
                    bill.BillNumber = reader["BillNumber"].ToString();
                    bill.BillDate = Convert.ToDateTime(reader["BillDate"]);
                    bill.OrderID = Convert.ToInt32(reader["OrderID"]);
                    bill.TotalAmount = Convert.ToDecimal(reader["TotalAmount"]);
                    bill.Discount = reader["Discount"] != DBNull.Value ? Convert.ToDecimal(reader["Discount"]) : (decimal?)null;
                    bill.NetAmount = Convert.ToDecimal(reader["NetAmount"]);
                    bill.UserID = Convert.ToInt32(reader["UserID"]);
                }
            }

            return View("AddBill", bill);
        }
        #endregion

        #region ExportExcel
        public IActionResult ExportExcel()
        {
            string connectionString = configuration.GetConnectionString("ConnectionString");
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                SqlCommand command = connection.CreateCommand();
                command.CommandType = CommandType.StoredProcedure;
                command.CommandText = "PR_Bills_SelectAll";
                SqlDataReader reader = command.ExecuteReader();
                DataTable table = new DataTable();
                table.Load(reader);

                using (XLWorkbook workbook = new XLWorkbook())
                {
                    var worksheet = workbook.Worksheets.Add("BillList");
                    worksheet.Cell(1, 1).Value = "BillID";
                    worksheet.Cell(1, 2).Value = "BillNumber";
                    worksheet.Cell(1, 3).Value = "BillDate";
                    worksheet.Cell(1, 4).Value = "OrderID";
                    worksheet.Cell(1, 5).Value = "TotalAmount";
                    worksheet.Cell(1, 6).Value = "Discount";
                    worksheet.Cell(1, 7).Value = "NetAmount";
                    worksheet.Cell(1, 8).Value = "UserName";

                    int row = 2;
                    foreach (DataRow dataRow in table.Rows)
                    {
                        worksheet.Cell(row, 1).Value = Convert.ToString(dataRow["BillID"]);
                        worksheet.Cell(row, 2).Value = Convert.ToString(dataRow["BillNumber"]);
                        worksheet.Cell(row, 3).Value = Convert.ToDateTime(dataRow["BillDate"]).ToString("yyyy-MM-dd");
                        worksheet.Cell(row, 4).Value = Convert.ToString(dataRow["OrderID"]);
                        worksheet.Cell(row, 5).Value = Convert.ToDecimal(dataRow["TotalAmount"]).ToString("F2");
                        worksheet.Cell(row, 6).Value = Convert.ToDecimal(dataRow["Discount"]).ToString("F2");
                        worksheet.Cell(row, 7).Value = Convert.ToDecimal(dataRow["NetAmount"]).ToString("F2");
                        worksheet.Cell(row, 8).Value = Convert.ToString(dataRow["UserName"]);
                        row++;
                    }

                    using (var stream = new MemoryStream())
                    {
                        workbook.SaveAs(stream);
                        var content = stream.ToArray();
                        return File(content, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", "BillList.xlsx");
                    }
                }
            }
        }
        #endregion
    }
}
