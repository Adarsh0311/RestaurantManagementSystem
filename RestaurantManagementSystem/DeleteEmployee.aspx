<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteEmployee.aspx.cs" Inherits="RestaurantManagementSystem.DeleteEmployee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Delete Employees</title>
    <style type="text/css">

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <p>Enter Employee id: <input type="number" runat="server" id="id"/></p>
        <button type="button" runat="server" id="deleteEmployee" onserverclick="deleteEmployee_ServerClick">Delete Record</button>
     </div>
    </form>
</body>
</html>
