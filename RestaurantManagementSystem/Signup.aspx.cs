using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RestaurantManagementSystem
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Signup_ServerClick(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO Customer (email, name, address, country, phone, password) VALUES (@email, @name, @address, @country, @phone, @password)");
            cmd.Parameters.AddWithValue("@email", email.Value);
            cmd.Parameters.AddWithValue("@name", name.Value);
            cmd.Parameters.AddWithValue("@address", address.Value);
            cmd.Parameters.AddWithValue("@country", country.Value);
            cmd.Parameters.AddWithValue("@phone", number.Value);
            cmd.Parameters.AddWithValue("@password", pass.Value);

            DAL.SetExecuteNonQuery(cmd);

            Session["email"] = email.Value;
            Session["name"] = name.Value;

            Response.Redirect("Index.aspx");

            
        }
    }
}