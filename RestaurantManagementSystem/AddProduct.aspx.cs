using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RestaurantManagementSystem
{
    public partial class AddProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addProduct_ServerClick(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO Product (product_name, description, quantity, unit_price, image) VALUES (@product_name, @description, @quantity, @unit_price, @image)");
            cmd.Parameters.AddWithValue("@product_name", name.Value);
            cmd.Parameters.AddWithValue("@description", description.Value);
            cmd.Parameters.AddWithValue("@quantity", quantity.Value);
            cmd.Parameters.AddWithValue("@unit_price", price.Value);
            cmd.Parameters.AddWithValue("@image", url.Value);

            DAL.SetExecuteNonQuery(cmd);
            
            Response.Redirect("Admin.aspx");
        }
    }
}