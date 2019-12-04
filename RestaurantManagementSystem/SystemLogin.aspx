<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SystemLogin.aspx.cs" Inherits="RestaurantManagementSystem.SystemLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>System Login</title>
    <style type="text/css">
			
			body{
				background-color: #1C2833;
			}


			div{
				width: 500px;
			/*	height: 315px;*/
				background-color: #E9EBEE;
				text-align: center;
				position: relative;
				left: 0%;		
				top: 141px;
				border-radius: 10px;
            margin-left: 315px;
        }


				input{
					width: 200px;
					height: 30px;
					border: 1px solid #ccc;
					border-radius: 5px;
					background-color: #E9EBEE;
				}

				input:hover{
					transition: 0.2s;
					transform: scaleX(1.1);
				}

				button{
					font-family: cursive;
					border:0px;
					background-color: #365899;
					color: white;
					font-size: 20px;
					border-radius: 5px;
					width: 100px;
				}

				button:hover{
					background-color: #0947CE ;
					transition: 0.2s;
					transform:scale(1.1);

				}

				h2{
					font-family: cursive;
	   			 }


		</style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
   			<h2 style="padding: 10px">Log In to System</h2>
			<p style="padding: 12px">Sign in to start your session</p>		
			<p>  <input type="name" placeholder="username" =""></p>
			<p>  <input type="password" placeholder="password" =""></p>
			<button type="button" onclick="window.location.href = 'Admin.aspx';">Log In</button>
        </div>
    </form>
</body>
</html>
