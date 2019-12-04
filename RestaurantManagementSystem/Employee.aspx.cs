using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RestaurantManagementSystem
{
    public partial class Employee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            employees_Repeater.DataSource = DAL.GetExecuteReader("select * from Employee");
            employees_Repeater.DataBind();
        }

        protected void employees_Repeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
    }


}