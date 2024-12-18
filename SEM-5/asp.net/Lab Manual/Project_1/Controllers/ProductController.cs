using Microsoft.AspNetCore.Mvc;
using ClosedXML.Excel;
using Project_1.Models;
using System.Data.SqlClient;
using System.Data;
using Microsoft.Extensions.Configuration;

namespace Project_1.Controllers
{

    public class ProductController : Controller
    {
        private IConfiguration configuration;

        public ProductController(IConfiguration _configuration)
        {
            configuration = _configuration;
        }

        public IActionResult ProductList()
        {
            string connectionString = this.configuration.GetConnectionString("ConnectionString");
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            SqlCommand command = connection.CreateCommand();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "PR_Product_SelectAll";
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

        public IActionResult ProductDelete(int ProductID)
        {
            try
            {
                string connectionString = this.configuration.GetConnectionString("ConnectionString");
                SqlConnection connection = new SqlConnection(connectionString);
                connection.Open();
                SqlCommand command = connection.CreateCommand();
                command.CommandType = CommandType.StoredProcedure;
                command.CommandText = "PR_Product_DeleteByPK";
                command.Parameters.Add("@ProductID", SqlDbType.Int).Value = ProductID;
                command.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                TempData["ErrorMessage"] = ex.Message;
                Console.WriteLine(ex.ToString());
            }
            return RedirectToAction("ProductList");
        }

        public IActionResult ExportExcel()
        {
            string connectionString = configuration.GetConnectionString("ConnectionString");
            SqlConnection connection = new SqlConnection(connectionString);
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
        public IActionResult AddProduct()
        {
            userDropdown();
            return View();
        }

        [HttpPost]
        public IActionResult ProductSave(ProductModel product)
        {
            if (ModelState.IsValid)
            {
                String ConnectionString = configuration.GetConnectionString("ConnectionString");
                SqlConnection Connection = new SqlConnection(ConnectionString);
                Connection.Open();
                SqlCommand command = Connection.CreateCommand();
                command.CommandType = CommandType.StoredProcedure;

                if (product.ProductID != null)
                {
                    command.CommandText = "PR_Product_UpdateByPK";
                    command.Parameters.AddWithValue("@ProductID", product.ProductID);
                }
                else
                {
                    command.CommandText = "PR_Product_Insert";
                }

                command.Parameters.AddWithValue("@productName", product.ProductName);
                command.Parameters.AddWithValue("@ProductPrice", product.ProductPrice);
                command.Parameters.AddWithValue("@productCode", product.ProductCode);
                command.Parameters.AddWithValue("@Description", product.Description);
                command.Parameters.AddWithValue("@UserID", product.UserID);
                command.ExecuteNonQuery();

                return RedirectToAction("ProductList");
            }

            userDropdown();
            return View("AddProduct", product);
        }


        public IActionResult ProductEdit(int ProductID)
        {
            string connectionString = this.configuration.GetConnectionString("ConnectionString");
            SqlConnection connection = new SqlConnection(connectionString);
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

            userDropdown();

            return View("AddProduct", product);
        }

    }
}
