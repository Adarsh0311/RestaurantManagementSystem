using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RestaurantManagementSystem
{
    public partial class Signin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

      
        protected void Signin_ServerClick(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select * from Customer where email = @email");
            cmd.Parameters.AddWithValue("@email", email.Value);
            SqlDataReader reader = DAL.GetExecuteReader(cmd);
            if (reader.HasRows)
            {
                reader.Read();

                if (reader.GetString(6).Equals(pass.Value))
                {
                    Session["name"] = reader.GetString(0);
                    Session["email"] = reader.GetString(1);

                    Response.Redirect("Index.aspx");
                }
                else
                {
                    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + "Invalid username or password" + "');", true);
                }
                
               
            }
            else
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + "No user found" + "');", true);
            }
        }
    }
}