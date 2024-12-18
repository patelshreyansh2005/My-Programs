using Microsoft.AspNetCore.Mvc;
using MVC_Nice_Admin_Table_Froms.Models;
using System.Data;
using System.Data.SqlClient;
using System.Runtime.CompilerServices;
using ClosedXML.Excel;
using MVC_Nice_Admin_Table_Froms.Controllers;

namespace MVC_Nice_Admin_Table_Froms.Controllers
{
    class Product
    {
        public string? ProductId { get; set; }
        public String? ProductName { get; set; }
        public String? Description { get; set; }
        public string? ProductPrice { get; set; }
        public string? ProductCode { get; set; }
        public string? UserID { get; set; }
    }
}

public class ProductController : Controller
{
    private IConfiguration configuration;

    public ProductController(IConfiguration _configuration)
    {
        configuration = _configuration;
    }
    public IActionResult ProductTable()
    {
        string connectionString = this.configuration.GetConnectionString("ConnectionString")!;
        SqlConnection connection = new SqlConnection(connectionString);
        connection.Open();
        SqlCommand command = connection.CreateCommand();
        command.CommandType = CommandType.StoredProcedure;
        command.CommandText = "PR_Product_Select_All";
        SqlDataReader reader = command.ExecuteReader();
        DataTable table = new DataTable();
        table.Load(reader);
        return View(table);
    }

    public IActionResult ProductDelete(int ProductID)
    {
        try
        {
            string connectionString = this.configuration.GetConnectionString("ConnectionString")!;
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            SqlCommand command = connection.CreateCommand();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "PR_Product_Delete_ByID";
            command.Parameters.Add("@ProductID", SqlDbType.Int).Value = ProductID;
            command.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            TempData["ErrorMessage"] = ex.Message;
            Console.WriteLine(ex.ToString());
        }
        return RedirectToAction("ProductTable");
    }
    public IActionResult ProductForm()
    {
        return View();
    }
    public IActionResult ProductSave(ProductModel productModel)
    {
        if (productModel.UserID <= 0)
        {
            ModelState.AddModelError("UserID", "A valid User is required.");
        }

        if (ModelState.IsValid)
        {
            string connectionString = this.configuration.GetConnectionString("ConnectionString")!;
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            SqlCommand command = connection.CreateCommand();
            command.CommandType = CommandType.StoredProcedure;
            if (productModel.ProductId == null)
            {
                command.CommandText = "PR_Product_Insert";
            }
            else
            {
                command.CommandText = "PR_Product_Update";
                command.Parameters.Add("@ProductID", SqlDbType.Int).Value = productModel.ProductId;
            }
            command.Parameters.Add("@ProductName", SqlDbType.VarChar).Value = productModel.ProductName;
            command.Parameters.Add("@ProductCode", SqlDbType.VarChar).Value = productModel.ProductCode;
            command.Parameters.Add("@ProductPrice", SqlDbType.Decimal).Value = productModel.ProductPrice;
            command.Parameters.Add("@Description", SqlDbType.VarChar).Value = productModel.Description;
            command.Parameters.Add("@UserID", SqlDbType.Int).Value = productModel.UserID;
            command.ExecuteNonQuery();
            return RedirectToAction("ProductTable");
        }

        return View("ProductForm", productModel);
    }
    public IActionResult CreateExcelFile(ProductModel productModel)
    {
        string connectionString = this.configuration.GetConnectionString("ConnectionString")!;
        SqlConnection connection = new SqlConnection(connectionString);
        connection.Open();
        SqlCommand command = connection.CreateCommand();
        command.CommandType = CommandType.StoredProcedure;
        command.CommandText = "PR_Product_Select_All";
        SqlDataReader reader = command.ExecuteReader();
        DataTable table = new DataTable();
        table.Load(reader);
        //Create an Instance of Workbook, i.e., Creates a new Excel workbook
        var workbook = new XLWorkbook();

        //Add a Worksheets with the workbook
        //Worksheets name is Employees
        IXLWorksheet worksheet = workbook.Worksheets.Add("Products");

        //Create the Cell
        //First Row is going to be Header Row
        worksheet.Cell(1, 1).Value = "ID"; //First Row and First Column
        worksheet.Cell(1, 2).Value = "Name"; //First Row and Second Column
        worksheet.Cell(1, 3).Value = "Description"; //First Row and Third Column
        worksheet.Cell(1, 4).Value = "Price"; //First Row and Fourth Column
        worksheet.Cell(1, 5).Value = "Code"; //First Row and Fifth Column
        //worksheet.Cell(1, 6).Value = "User ID"; //First Row and Sixth Column

        //Data is going to stored from Row 2
        List<Product> productList = new List<Product>();

        foreach (DataRow row in table.Rows)
        {
            Product product = new Product();
            product.ProductId = row["ProductId"].ToString()!;
            product.ProductName = row["ProductName"].ToString()!;
            product.Description = row["Description"].ToString()!;
            product.ProductPrice = row["ProductPrice"].ToString()!;
            product.ProductCode = row["ProductCode"].ToString()!;
            //product.UserID = row["UserID"].ToString()!;
            productList.Add(product);
        }
        //Loop Through Each Employees and Populate the worksheet
        //For Each Employee increase row by 1
        int rowPointer = 2;
        foreach (var pro in productList)
        {
            worksheet.Cell(rowPointer, 1).Value = pro.ProductId;
            worksheet.Cell(rowPointer, 2).Value = pro.ProductName;
            worksheet.Cell(rowPointer, 3).Value = pro.Description;
            worksheet.Cell(rowPointer, 4).Value = pro.ProductPrice;
            worksheet.Cell(rowPointer, 5).Value = pro.ProductCode;
            //worksheet.Cell(rowPointer, 6).Value = pro.UserID;
            rowPointer++; //Increasing the Data Row by 1
        }

        //Create an Memory Stream Object
        var stream = new MemoryStream();

        //Saves the current workbook to the Memory Stream Object.
        workbook.SaveAs(stream);

        //The Position property gets or sets the current position within the stream.
        //This is the next position a read, write, or seek operation will occur from.
        stream.Position = 0;

        //Give a Name to your Excel File
        string excelName = $"Employees-{Guid.NewGuid()}.xlsx";

        RedirectToAction("ProductTable");

        // 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet' is the MIME type for Excel files
        return File(stream, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", excelName);
    }
}

