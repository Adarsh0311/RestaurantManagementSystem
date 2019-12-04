using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RestaurantManagementSystem
{
    public partial class ViewProducts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            products_Repeater.DataSource = DAL.GetExecuteReader("select product_id, product_name, description, quantity, unit_price from [Product]");
            products_Repeater.DataBind();
        }

        protected void products_Repeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
    }
}