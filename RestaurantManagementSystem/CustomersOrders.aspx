<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomersOrders.aspx.cs" Inherits="RestaurantManagementSystem.CustomersOrders" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style type="text/css">
        table, th, td {
         border: 1px solid black;
         border-collapse: collapse;
          }

        	div[class=look]{

				width: 150px;
				height: 400px;
				background-color: #2980B9;
				color: white;
				position: relative;
				left: 1px;
				top: -10px;
			}

			button{
				width: 204px;
				height: 40px;
				background-color: #212F3C;
				color: white;
				border: 0.5px solid white  ;
				border-radius: 5px;
				padding: 2px;
			}

			button:hover{
				transition: 0.3s;
				transform: scale(1.1);
				font-size: 15px;
				font-weight: bold;
			}

			.dropdown{
				position: relative;
				display: inline-block;
			}

			.dropdown-content{
				display: none;
				z-index: 1;
				min-width: 100px;
  				box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
 				padding: 5px 5px;
				border-radius: 5px;
				background-color: #0E75E8;
				color: white;
			}

			.dropdown:hover .dropdown-content {
  				display: block;
  			}
        .auto-style1 {
            width: 1250px;
            margin-left: 28px;
            margin-top: 46px;
            position:relative;
            right:21px;
            top:12px;
            height: 225px;
            margin-bottom: 81px;
            background-color:#E9EBEE;
           
        }
        .auto-style2 {
            left: 1px;
            top: -10px;
            height: 108px;
            width: 1261px;
            margin-bottom: 0px;
            background-color:dodgerblue;
        }
        .auto-style10 {
            height: 29px;
            margin-top: 0px;
        }
        .auto-style11 {
            width: 1260px;
            height: 110px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server" class="auto-style11">

        <div style="background-color:dodgerblue">
			<h2 style="font-family: calibri; text-align: center; padding-top: 10px;" class="auto-style10">Admin</h2>
			<button type="button" onclick="window.location.href = 'Admin.aspx';" >Home</button>	
			
            <div class="dropdown">
                <button type="button" onclick="window.location.href = 'Employee.aspx';">Employees</button>

                <div class="dropdown-content">
                    <button type="button" onclick="window.location.href = 'AddEmployee.aspx';" style="background-color: #0E75E8">Add Employee</button>
					<button type="button"  style="background-color: #0E75E8" onclick="window.location.href = 'DeleteEmployee.aspx';">Delete Employee</button>
                </div>
            </div>

			<button type="button" onclick="window.location.href = 'Customersaspx.aspx';">Customers</button>
            <div class="dropdown">
                			<button type="button" onclick="window.location.href = 'ViewProducts.aspx';" >Products</button>
            <div class="dropdown-content">
				<button type="button" onclick="window.location.href = 'AddProduct.aspx';" style="background-color: #0E75E8">Add Product</button>
				<button type="button"  style="background-color: #0E75E8" onclick="window.location.href = 'DeleteProducts.aspx';">Delete Product</button>
			</div>

            </div>

			<button type="button" onclick="window.location.href = 'CustomersOrders.aspx';" >Orders</button>
			<button type="button" onclick="window.location.href = 'SystemLogin.aspx';">Logout</button>												
		</div>
        <div style="background-color:#E9EBEE">
            <asp:Repeater ID="orders_Repeater" runat="server" OnItemCommand="orders_Repeater_ItemCommand">
                <HeaderTemplate>
                    <table>
                        <caption style="font-weight:900; font-size:large">Order Details</caption>
                        <tr>
                            <td style="width: 200px; font-size: large; font-weight:900">Customer ID</td>
                            <td style="width: 200px; font-size: large; font-weight:900">Order No</td>
                            <td style="width: 200px; font-size: large; font-weight:900">Total Amount</td>
                            <td style="width: 200px; font-size: large; font-weight:900">Date</td>
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("customer_id")%></td>
                        <td><%# Eval("order_no")%></td>
                        <td><%# Eval("price")%></td>
                        <td><%# Eval("date")%></td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
        </div>
    </form>
</body>
</html>
