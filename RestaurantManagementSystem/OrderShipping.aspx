<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderShipping.aspx.cs" Inherits="RestaurantManagementSystem.OrderShipping" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Order Shipping </title>
    <style type="text/css">
        body{
            background-color:darkturquoise;
        }
        
        button:hover{
            font-size:large;
        }
        .auto-style1 {
            width: 112px;
            height: 32px;
            margin-top: 0px;
        }
        .auto-style2 {
            height: 39px;
        }
    </style>
</head>
<body>
    <form id="Order" runat="server">
        <div>
            <p >Order number: <input runat="server" id="orderNumber" type="number" style="margin-left: 12px; width: 212px;" /></p>

           <p class="auto-style2"> Shipped<input type="radio" name="delivery" />   Un-Shipped<input type="radio" name="delivery" />  Cancelled<input type="radio" name="delivery" /></p>
             <button type="button" onclick="window.location.href = 'Admin.aspx';" class="auto-style1">Submit</button>						
        </div>
    </form>
</body>
</html>
