using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RestaurantManagementSystem
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] != null)
            {
                signin.InnerText = Session["name"].ToString().Split()[0];
                homepage.InnerText = "logout";

            }
            else
            {
                signin.InnerText = "Sign in";
                homepage.InnerText = "Home";
            }
        }


        public void Sign_in(object sender, EventArgs e)
        {
            if (Session["name"] == null)
                Response.Redirect("Signin.aspx");
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Redirect("Index.aspx");
        }
    }
}