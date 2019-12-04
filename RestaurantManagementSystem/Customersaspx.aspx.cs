using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RestaurantManagementSystem
{
    public partial class Customersaspx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            customers_Repeater.DataSource = DAL.GetExecuteReader("select * from Customer");
            customers_Repeater.DataBind();
        }

        protected void customers_Repeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
    }
}