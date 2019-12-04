<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="RestaurantManagementSystem.Employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employee</title>
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
        .auto-style2 {
            left: 1px;
            top: -10px;
            height: 93px;
            width: 1261px;
            margin-bottom: 0px;
            background-color:dodgerblue;
        }
        .auto-style10 {
            height: 21px;
            margin-top: 0px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-color:dodgerblue">
            <h2 style="font-family: calibri; text-align: center; padding-top: 10px;" class="auto-style10">Admin</h2>
			<button type="button" onclick="window.location.href = 'Admin.aspx';" >Home</button>	
			
            <div class="dropdown">
                <button type="button" onclick="window.location.href = 'Employee.aspx';">Employees</button>

                <div class="dropdown-content">
                    <button type="button" onclick="window.location.href = 'AddEmployee.aspx';" style="background-color: #0E75E8">Add Employee</button>
					<button type="button"  style="background-color: #0E75E8">Delete Employee</button>
                </div>
            </div>

			<button type="button" onclick="window.location.href = 'Customersaspx.aspx';">Customers</button>
			<div class="dropdown">
                <button type="button" onclick="window.location.href = 'ViewProducts.aspx';">Products</button>
			    
            <div class="dropdown-content">
				<button type="button" onclick="window.location.href = 'AddProduct.aspx';" style="background-color: #0E75E8">Add Product</button>
				<button type="button"  style="background-color: #0E75E8">Delete Product</button>
			</div>
        
            </div>
			<button type="button" onclick="window.location.href = 'CustomersOrders.aspx';" >Orders</button>
			<button type="button" onclick="window.location.href = 'SystemLogin.aspx';">Logout</button>						
		</div>
        <div style="background-color:#E9EBEE">
            <asp:Repeater ID="employees_Repeater" runat="server" OnItemCommand="employees_Repeater_ItemCommand">
                <HeaderTemplate>
                    <table>
                        <caption style="font-weight:900; font-size:large">Employees Details</caption>
                        <tr>
                            <td style="width:200px; font-size:large; font-weight:900;">ID</td>
                            <td style="width:200px; font-size:large; font-weight:900;">Name</td>
                            <td style="width:200px; font-size:large; font-weight:900;">Phone</td>
                             <td style="width:200px; font-size:large; font-weight:900;">Age</td>
                            <td style="width:200px; font-size:large; font-weight:900;">Address</td>
                            <td style="width:200px; font-size:large; font-weight:900;">Salary</td>
                            <td style="width:200px; font-size:large; font-weight:900;">Job</td>    
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("e_id")%></td>
                        <td><%# Eval("Name")%></td>
                        <td><%# Eval("phone")%></td>
                        <td><%# Eval("age")%></td>
                        <td><%# Eval("address")%></td>
                        <td><%# Eval("salary")%></td>
                        <td><%# Eval("job")%></td>
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
