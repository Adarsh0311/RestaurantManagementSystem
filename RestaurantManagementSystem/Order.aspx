<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="RestaurantManagementSystem.Order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Orders</title>

    	<style type="text/css">


			
		img:hover{
			transition: 0.3s;
			transform: scale(1.03);
		}

        button{
            background-color:yellow;

        }

        button:hover{
            transition:0.2s;
            background-color:red;
            color:white;
        }

		    .auto-style1 {
                width: 558px;
            }
            .auto-style2 {
                margin-left: 85px;
                width: 135px;
                height: 37px;
            }
            .auto-style3 {
                margin-left: 104px;
                width: 135px;
                height: 37px;
            }
            .auto-style5 {
                margin-left: 86px;
                width: 135px;
                height: 37px;
            }
            .auto-style6 {
                width: 72%;
                height: 329px;
            }

            body{
                background-color:#0C0C0C;
                color:white;
            }


		    .auto-style7 {
                height: 241px;
                width: 286px;
            }
            .auto-style8 {
                height: 241px;
                width: 285px;
            }
            .auto-style9 {
                height: 240px;
                width: 327px;
            }
            .auto-style10 {
                width: 445px;
            }


		    .auto-style11 {
                width: 612px;
            }
            .auto-style12 {
                width: 558px;
                height: 258px;
            }
            .auto-style13 {
                width: 612px;
                height: 258px;
            }
            .auto-style14 {
                width: 445px;
                height: 258px;
            }
            .auto-style15 {
                height: -15px;
            }


		    .auto-style16 {
                width: 912px;
            }
            

		    .auto-style21 {
                width: 558px;
                height: 32px;
            }
            .auto-style22 {
                height: 32px;
            }
            .auto-style23 {
                width: 445px;
                height: 32px;
            }
            .auto-style24 {
                margin-left: 114px;
                width: 135px;
                height: 37px;
            }


		    .auto-style25 {
                width: 292px;
                height: 47px;
                margin-left: 961px;
                margin-top: 0px;
            }


		    .auto-style26 {
                margin-left: 123px;
                width: 135px;
                height: 37px;
            }
            .auto-style27 {
                margin-left: 139px;
                width: 135px;
                height: 37px;
            }
            .auto-style28 {
                margin-left: 126px;
                width: 135px;
                height: 37px;
            }


		</style>


    
    <script language="C#" runat="server">

        protected void TransferFund(Object Sender, EventArgs e)

        {

            String strSQL = "Select dBalance FROM tblAccount where AccNumber='" + txtFrom.Text + "'";

            double dCurrBalance;

            OleDbConnection Conn = new OleDbConnection("PROVIDER=Microsoft.Jet.OLEDB.4.0;DATA

            SOURCE=c:\\inetpub\\wwwroot\\dotnet\\test.mdb;");

            Conn.Open();

            OleDbDataReader oReader;

            OleDbCommand cmd = new OleDbCommand(strSQL, Conn);

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

                strSQL = "Update tblAccount set dbalance =  dBalance - " + txtAmt.Text + " where AccNumber = '"

                + txtFrom.Text + "'";

                cmd.CommandText = strSQL;

                cmd.ExecuteNonQuery();

                strSQL = "Update tblAccount set dbalance =  dBalance + " + txtAmt.Text + " where AccNumber = '"

                + txtTo.Text + "'";

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

 

    </script>
</head>
<body>

    <form id="Order" runat="server">

<!--<section class="auto-style16">
    <h2>PIZZAS<hr class="auto-style15" /></h2>
<table class="auto-style6">
  <tr>
    <th class="auto-style12"><img src="Images/pizzas.png" class="auto-style8" /></th>
    <th class="auto-style13"><img src="Images/fajita.png" class="auto-style7"/></th>
    <th class="auto-style14"><img src="Images/beef.png" class="auto-style9"/></th>
  </tr>
  <tr>
    <td class="auto-style21"><p class="auto-style2">ITALIAN</p></td>
    <td class="auto-style22"><p class="auto-style24">FAJITA</p></td>
    <td class="auto-style23"><p class="auto-style3">TIKKA</p></td>
  </tr>

  <tr>
    <td class="auto-style1"><button class="auto-style2">ORDER</button></td>
    <td class="auto-style11"><button class="auto-style3">ORDER</button></td>
    <td class="auto-style10"><button class="auto-style5">ORDER</button></td>
  </tr>

</table>
    </section>

<section class="auto-style16">
    <h2>BEVERAGES<hr class="auto-style15" /></h2>
<table class="auto-style6">
  <tr>
    <th class="auto-style12"><img src="Images/7up.png" class="auto-style8" /></th>
    <th class="auto-style13"><img src="Images/pepsi.png" class="auto-style7"/></th>
    <th class="auto-style14"><img src="Images/marinda.png" class="auto-style9"/></th>
  </tr>
  <tr>
    <td class="auto-style21"><p class="auto-style26">7UP</p></td>
    <td class="auto-style22"><p class="auto-style27">PEPSI</p></td>
    <td class="auto-style23"><p class="auto-style28">MARINDA</p></td>
  </tr>

  <tr>
    <td class="auto-style1"><button class="auto-style2">ORDER</button></td>
    <td class="auto-style11"><button class="auto-style3">ORDER</button></td>
    <td class="auto-style10"><button class="auto-style5">ORDER</button></td>
  </tr>

</table>
    </section>
-->

          <asp:Repeater ID="products_Repeater" runat="server" OnItemCommand="products_Repeater_ItemCommand">
               <HeaderTemplate>
                    <table>

                </HeaderTemplate>
            
                <ItemTemplate>
                    <tr>
                        <td> <img  src="<%# Eval("image")%>"/> </td>
                        <td><%# Eval("product_name")%></td>
                        <td><%# Eval("unit_price")%></td>
                        <td><button type="button" runat="server" id="order" onserverclick="order_ServerClick"></button></td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
        
       <p class="auto-style25">Goto homepage <a href="Index.aspx"> click here</a></p> 

   

        <asp:Label ID="lblFrom" runat="server">Enter the account number from which to transfer

          funds</asp:Label>

        <asp:TextBox ID="txtFrom" runat="server"></asp:TextBox><br />

        <asp:Label ID="lblTo" runat="server">Enter the account number to which to transfer funds</asp:Label>

        <asp:TextBox ID="txtTo" runat="server"></asp:TextBox><br />

        <asp:Label ID="lblAmount" runat="server">Enter the amount to transfer</asp:Label>

        <asp:TextBox ID="txtAmt" runat="server"></asp:TextBox><br />

        <asp:Button ID="Button1" OnClick="TransferFund" runat="server" Text="Start Transfer">

        </asp:Button><br />

        <asp:Label ID="lbl" runat="server"></asp:Label>

    </form>
</body>
</html>
