using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RestaurantManagementSystem
{
    public partial class CustomersOrders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            orders_Repeater.DataSource = DAL.GetExecuteReader("select * from [Order]");
            orders_Repeater.DataBind();
        }

        protected void orders_Repeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
    }
}