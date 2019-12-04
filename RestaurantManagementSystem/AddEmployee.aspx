<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddEmployee.aspx.cs" Inherits="RestaurantManagementSystem.AddEmployee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Employee</title>
       <style type="text/css">
		


		button{
			border-style: none;
            border-color: inherit;
            border-width: 0;
            width: 96px;
			height: 35px;
			background-color: #4CAF50;
			border-radius: 1px;
			margin-left: 273px;
        }

		button:hover{
			transition: 0.2s;
			transform: scale(1.1);
			background-color:#4CAF50;
            color:whitesmoke;

		}

		div{
			width: 509px;
			background-color: #E9EBEE;
			position: relative;
			left: 10px;
			margin-top: 10px;
			text-align: left;
            top: 0px;
        }
           .auto-style1 {
               left: 10px;
               top: 0px;
               width: 572px;
           }
           .auto-style2 {
               width: 220px;
               height: 30px;
               margin-left: 122px;
           }
           .auto-style3 {
               width: 220px;
               height: 30px;
               margin-left: 103px;
           }
           .auto-style4 {
               width: 220px;
               height: 30px;
               margin-left: 123px;
           }
           .auto-style5 {
               width: 220px;
               height: 30px;
               margin-left: 91px;
           }
           .auto-style6 {
               width: 220px;
               height: 30px;
               margin-left: 106px;
           }
           .auto-style7 {
               width: 220px;
               height: 30px;
               margin-left: 21px;
           }
           </style>
</head>
<body>
    <form id="form1" runat="server">
       
        <div class="auto-style1">
            <p>Employee Name <input runat="server" id="name" type="text" name="" class="auto-style7"/></p>
            <p>Phone <input runat="server" id="phone" type="text" class="auto-style3"/></p>
		    <p>Age <input runat="server" id="age" type="number" name="" class="auto-style4"/></p>
		    <p>Address <input runat="server" id="address" type="text" name="" class="auto-style5"/></p>
            <p>Salary <input runat="server" id="salary" type="number" name="" class="auto-style6"/></p>
            <p>Job <input runat="server" id="job" type="text" name="" class="auto-style2"/></p>
            <!-- <p>Hire_Date <input runat="server" id="Text2" type="text" name="" style="width: 220px; margin-left: 19px; height: 30px;"/></p> -->
		    <button runat="server" id="addEmployee" type="button" onserverclick="addEmployee_ServerClick">Add Employee</button>
             <a href="Admin.aspx">Go to home page</a>
        </div>
    </form>
</body>
</html>
