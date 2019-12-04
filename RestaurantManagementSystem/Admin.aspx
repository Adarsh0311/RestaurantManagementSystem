<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="RestaurantManagementSystem.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Panel </title>
    
<style type="text/css"> 

			div[class=look]{

				width: 150px;
				height: 400px;
				background-color: #2980B9;
				color: white;
				position: relative;
				left: -1px;
				top: -10px;
			}

			button{
				width: 150px;
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
            body{
                background-image:url("Images/admin.png");
                background-repeat:no-repeat;
                background-size:30%;
                background-position:center;

            }

		</style>
</head>
<body>
    <form id="form1" runat="server">                     
		<div class="look">
            
			<h2 style="font-family: calibri; text-align: center; padding-top: 10px;">Admin</h2>
			<button type="button" onclick="window.location.href = 'Admin.aspx';">Home</button>
           
            <div class="dropdown">
                <button type="button" onclick="window.location.href = 'Employee.aspx';">Employees</button>

                <div class="dropdown-content">
                    <button type="button" onclick="window.location.href = 'AddEmployee.aspx';" style="background-color: #0E75E8">Add Employee</button>
					<button type="button"  style="background-color: #0E75E8" onclick="window.location.href = 'DeleteEmployee.aspx';">Delete Employee</button>
                </div>
            </div>
			

				<button type="button" onclick="window.location.href = 'Customersaspx.aspx';">Customers</button>
			
			

			<div class="dropdown">

			    <button type="button" onclick="window.location.href = 'ViewProducts.aspx';">Products</button>

				<div class="dropdown-content">
					<button type="button" onclick="window.location.href = 'AddProduct.aspx';" style="background-color: #0E75E8">Add Product</button>
					<button type="button"  style="background-color: #0E75E8" onclick="window.location.href = 'DeleteProducts.aspx';">Delete Product</button>
				</div>
			
			</div>

			<button type="button" onclick="window.location.href = 'CustomersOrders.aspx';">Orders</button>
            <button type="button" onclick="window.location.href = 'GeneratePromos.aspx';">Promos</button>	
             <button type="button" onclick="window.location.href = 'OrderShipping.aspx';">Order Shipping</button>						
			<button type="button" onclick="window.location.href = 'SystemLogin.aspx';">Logout</button>		
            
		</div>

    </form>
</body>
</html>
