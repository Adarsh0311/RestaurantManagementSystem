using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

namespace RestaurantManagementSystem
{
    public partial class Order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            products_Repeater.DataSource = DAL.GetExecuteReader("select image, product_name, unit_price from [Product]");
            products_Repeater.DataBind();
        }

        protected void products_Repeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        protected void order_ServerClick(object sender, EventArgs e)
        {
            OleDbTransaction Trans = Conn.BeginTransaction(IsolationLevel.ReadCommitted);
            cmd.Transaction = Trans;
            try

            {

                oReader = cmd.ExecuteReader();

                oReader.Read();

                dCurrBalance = oReader.GetDouble(0);

                oReader.Close();

                if (dCurrBalance < Convert.ToDouble(txtAmt.Text))

                {

                    throw (new Exception("Insufficient funds for transfer"));

                }

                strSQL = "Update tblAccount set dbalance =  dBalance - " + txtAmt.Text + " where AccNumber = '" +

                txtFrom.Text + "'";

                cmd.CommandText = strSQL;

                cmd.ExecuteNonQuery();

                strSQL = "Update tblAccount set dbalance =  dBalance + " + txtAmt.Text + " where AccNumber = '" +

                txtTo.Text + "'";

                cmd.CommandText = strSQL;

                cmd.ExecuteNonQuery();

                Trans.Commit();

                lbl.Text = "true";

            }

            catch (Exception ex)
     
            {

                Trans.Rollback();

                lbl.Text = "Error: " + ex.Message;

            }

            finally

            {

                Conn.Close();
            }
        }
    }
}