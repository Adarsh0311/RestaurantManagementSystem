using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RestaurantManagementSystem
{
    public partial class AddEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void addEmployee_ServerClick(object sender, EventArgs e)
        {
           
                SqlCommand cmd = new SqlCommand("INSERT INTO Employee (name, phone, age, address, salary, job) VALUES (@name, @phone, @age, @address, @salary, @job)");
                cmd.Parameters.AddWithValue("@name", name.Value);
                cmd.Parameters.AddWithValue("@phone", phone.Value);
                cmd.Parameters.AddWithValue("@age", age.Value);
                cmd.Parameters.AddWithValue("@address", address.Value);
                cmd.Parameters.AddWithValue("@salary", salary.Value);
                cmd.Parameters.AddWithValue("@job", job.Value);
                DAL.SetExecuteNonQuery(cmd);

    

            Response.Redirect("Admin.aspx");
        }
    }
}