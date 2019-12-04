<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteProducts.aspx.cs" Inherits="RestaurantManagementSystem.DeleteProducts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Delete Products</title>
</head>
<body>
    <form id="form1" runat="server">
       <div>
        <p>Enter Product id: <input type="number" runat="server" id="pid"/></p>
        <button type="button" runat="server" id="deleteProduct" onserverclick="deleteProduct_ServerClick" >Delete Item</button>
     </div>
    </form>
</body>
</html>
