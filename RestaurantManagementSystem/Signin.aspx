<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signin.aspx.cs" Inherits="RestaurantManagementSystem.Signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Signin</title>
    		<style type="text/css">
			
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


			button:hover{
				background-color: #09CE2F;
				transition: 0.3s;
				transform: scale(1.1);
			}

			body{
				background-color: #E9EBEE;
			}	

			button{
				border-style: none;
                    border-color: inherit;
                    border-width: 0px;
                    width: 154px;
				    height: 40px;
				    font-size: 20px;
				    color: white;
				    background-color: #4CAF50;
				    border-radius: 5px;
				    position: relative;
			    	left: 1%;
                    top: 0px;
                }

						p{
				font-family: Verdana;
			}



		</style>

</head>
<body>
    <form id="Signin_Form" runat="server">
        <div>
		   	
			    <p>Enter Email <input runat="server" id="email" style="margin-left: 25px" type="Name" placeholder="Your Email"/></p>
			    <p>Password  <input runat="server" id="pass" style="margin-left: 45px" type="Password"/></p>
			    <button id="SigninButton" runat="server" type="button" onserverclick="Signin_ServerClick">Sign In</button>

            <p>Don't have an account? <a href="Signup.aspx">Create Account!</a></p>
	
        </div>
    </form>
</body>
</html>
