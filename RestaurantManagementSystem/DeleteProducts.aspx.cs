using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RestaurantManagementSystem
{
    public partial class DeleteProducts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void deleteProduct_ServerClick(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("DELETE FROM Product WHERE (product_id = @pid)");
            cmd.Parameters.AddWithValue("@pid", pid.Value);

            DAL.SetExecuteNonQuery(cmd);

            Response.Redirect("Admin.aspx");
        }
    }
}