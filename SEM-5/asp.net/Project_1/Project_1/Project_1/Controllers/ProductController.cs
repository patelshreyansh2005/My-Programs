using Microsoft.AspNetCore.Mvc;
using ClosedXML.Excel;
using Project_1.Models;
using System.Data.SqlClient;
using System.Data;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;

namespace Project_1.Controllers
{
    [CheckAccess]
    public class ProductController : Controller
    {
        private readonly IConfiguration configuration;
        private readonly ILogger<ProductController> logger;

        public ProductController(IConfiguration _configuration, ILogger<ProductController> _logger)
        {
            configuration = _configuration;
            logger = _logger;
        }

        public IActionResult ProductList()
        {
            string connectionString = this.configuration.GetConnectionString("ConnectionString");
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                SqlCommand command = connection.CreateCommand();
                command.CommandType = CommandType.StoredProcedure;
                command.CommandText = "PR_Product_SelectAll";
                SqlDataReader reader = command.ExecuteReader();
                DataTable table = new DataTable();
                table.Load(reader);
                return View(table);
            }
        }

        private void LoadUserDropdown()
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
                    UserDropDownModel userDropDown = new UserDropDownModel
                    {
                        UserID = Convert.ToInt32(data["UserID"]),
                        UserName = data["UserName"].ToString()
                    };
                    userList.Add(userDropDown);
                }
                ViewBag.UserList = userList;
            }
        }

        public IActionResult ProductDelete(int ProductID)
        {
            try
            {
                string connectionString = this.configuration.GetConnectionString("ConnectionString");
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    SqlCommand command = connection.CreateCommand();
                    command.CommandType = CommandType.StoredProcedure;
                    command.CommandText = "PR_Product_DeleteByPK";
                    command.Parameters.Add("@ProductID", SqlDbType.Int).Value = ProductID;
                    command.ExecuteNonQuery();
                }
                TempData["SuccessMessage"] = "Product deleted successfully!";
            }
            catch (Exception ex)
            {
                logger.LogError(ex, "Error deleting product");
                TempData["ErrorMessage"] = "An error occurred while deleting the product. Please try again later.";
            }
            return RedirectToAction("ProductList");
        }

        public IActionResult ExportExcel()
        {
            string connectionString = configuration.GetConnectionString("ConnectionString");
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                SqlCommand command = connection.CreateCommand();
                command.CommandType = CommandType.StoredProcedure;
                command.CommandText = "PR_Product_SelectAll";
                SqlDataReader reader = command.ExecuteReader();
                DataTable table = new DataTable();
                table.Load(reader);

                using (XLWorkbook workbook = new XLWorkbook())
                {
                    var worksheet = workbook.Worksheets.Add("ProductList");
                    worksheet.Cell(1, 1).Value = "ProductID";
                    worksheet.Cell(1, 2).Value = "ProductName";
                    worksheet.Cell(1, 3).Value = "ProductPrice";
                    worksheet.Cell(1, 4).Value = "ProductCode";
                    worksheet.Cell(1, 5).Value = "Description";
                    worksheet.Cell(1, 6).Value = "UserName";

                    int row = 2;
                    foreach (DataRow dataRow in table.Rows)
                    {
                        worksheet.Cell(row, 1).Value = Convert.ToString(dataRow["ProductID"]);
                        worksheet.Cell(row, 2).Value = Convert.ToString(dataRow["ProductName"]);
                        worksheet.Cell(row, 3).Value = Convert.ToString(dataRow["ProductPrice"]);
                        worksheet.Cell(row, 4).Value = Convert.ToString(dataRow["ProductCode"]);
                        worksheet.Cell(row, 5).Value = Convert.ToString(dataRow["Description"]);
                        worksheet.Cell(row, 6).Value = Convert.ToString(dataRow["UserName"]);
                        row++;
                    }

                    using (var stream = new MemoryStream())
                    {
                        workbook.SaveAs(stream);
                        var content = stream.ToArray();
                        return File(content, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", "ProductList.xlsx");
                    }
                }
            }
        }

        public IActionResult AddProduct(int? id)
        {
            LoadUserDropdown();
            if (id.HasValue)
            {
                return ProductEdit(id.Value);
            }
            ViewBag.Action = "Add";
            return View("AddProduct");
        }

        [HttpPost]
        public IActionResult ProductSave(ProductModel product)
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

                        if (product.ProductID != null && product.ProductID > 0)
                        {
                            command.CommandText = "PR_Product_UpdateByPK";
                            command.Parameters.AddWithValue("@ProductID", product.ProductID);
                            TempData["SuccessMessage"] = "Product updated successfully!";
                        }
                        else
                        {
                            command.CommandText = "PR_Product_Insert";
                            TempData["SuccessMessage"] = "Product added successfully!";
                        }

                        command.Parameters.AddWithValue("@ProductName", product.ProductName);
                        command.Parameters.AddWithValue("@ProductPrice", product.ProductPrice);
                        command.Parameters.AddWithValue("@ProductCode", product.ProductCode);
                        command.Parameters.AddWithValue("@Description", product.Description);
                        command.Parameters.AddWithValue("@UserID", product.UserID);
                        command.ExecuteNonQuery();
                    }
                    return RedirectToAction("ProductList");
                }
                catch (Exception ex)
                {
                    logger.LogError(ex, "Error saving product");
                    TempData["ErrorMessage"] = "An error occurred while saving the product. Please try again later.";
                }
            }

            LoadUserDropdown();
            ViewBag.Action = product.ProductID > 0 ? "Edit" : "Add";
            return View("AddProduct", product);
        }

        public IActionResult ProductEdit(int ProductID)
        {
            string connectionString = this.configuration.GetConnectionString("ConnectionString");
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                SqlCommand command = connection.CreateCommand();
                command.CommandType = CommandType.StoredProcedure;
                command.CommandText = "PR_Product_SelectByPK";
                command.Parameters.AddWithValue("@ProductID", ProductID);
                SqlDataReader reader = command.ExecuteReader();

                ProductModel product = null;
                if (reader.Read())
                {
                    product = new ProductModel
                    {
                        ProductID = Convert.ToInt32(reader["ProductID"]),
                        ProductName = reader["ProductName"].ToString(),
                        ProductPrice = Convert.ToDouble(reader["ProductPrice"]),
                        ProductCode = reader["ProductCode"].ToString(),
                        Description = reader["Description"].ToString(),
                        UserID = Convert.ToInt32(reader["UserID"])
                    };
                }

                LoadUserDropdown();
                ViewBag.Action = "Edit";
                return View("AddProduct", product);
            }
        }
    }
}
