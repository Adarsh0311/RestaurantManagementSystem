<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="RestaurantManagementSystem.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign up</title>
    <style type="text/css">
			
			button{
				width: 130px;
				height: 40px;
				font-size: 20px;
				color: white;
				border: 0px;
				background-color: #4CAF50;
				border-radius: 5px;
				position: relative;
				left: 53%;
			}

			p{
				font-family: Verdana;
			}

			button:hover{
				background-color: #09CE2F;
				transition: 0.3s;
				transform: scale(1.1);
			}

			body{
				background-color: #E9EBEE;
			}
		

			input{

				width: 50%;
				padding: 12px;
				border: 1px solid #ccc;
				border-radius: 4px;
			    
			}

			input:hover{
				transition: 0.2s;
				transform: scale(1.015);
			}


			div{

				width: 1258px;
			}

		</style>
</head>
<body>
    <form id="signupForm" runat="server">
        <div>  
				
				<p> Email <input runat="server" id="email" style="margin-left: 113px" type="Email" placeholder="Enter your Email"/></p>
				<p> Full Name <input runat="server" id="name" style="margin-left: 78px" type="Name" placeholder="Enter your Name"/></p>
				<p> Enter Password <input runat="server" id="pass" style="margin-left: 36px" type="Password" placeholder="Password"/></p>
				<p> Country <input runat="server" id="country" style="margin-left: 95px" type="Country" name=""/></p>
				<p> Phone Number  <input runat="server" id="number" style="margin-left: 40px" type="Phone"/></p>
				<p> Address  <input runat="server" id="address" style="margin-left: 95px" type="Address"/></p>
				<button runat="server" type="button" onserverclick="Signup_ServerClick">Sign Up</button>

		</div>
    </form>
</body>
</html>
