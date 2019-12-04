using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

namespace RestaurantManagementSystem
{
    public partial class DeleteEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void deleteEmployee_ServerClick(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("DELETE FROM Employee WHERE (e_id = @Eid)");
            cmd.Parameters.AddWithValue( "@Eid", id.Value);
   
            DAL.SetExecuteNonQuery(cmd);

            Response.Redirect("Admin.aspx");
        }
    }
}