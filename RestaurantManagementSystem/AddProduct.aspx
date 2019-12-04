<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="AddProduct.aspx.cs"  Inherits="RestaurantManagementSystem.AddProduct" %>
<%@ MasterType VirtualPath="~/AdminMaster.Master" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Products</title>
   <!-- <link rel="import" href="Admin.aspx" />-->
    		<style type="text/css"> 
       
			div[class=look]{

				width: 1214px;
				height: 84px;
				background-color: #2980B9;
				color: white;
				position: relative;           
                left: 14px;
				top: 4px;
                margin-top: 3px;
            }

            div[class=head]{
                width:100%;
                height:36px;
                background-color:none;
                color:chartreuse;
                margin-left: 0px;
                font-family:'Times New Roman', Times, serif;
            }

			button{
				width: 167px;
				height: 40px;
				background-color:darkblue;
				color: white;
				border: 0.5px solid white;
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

            section#heading{
                background-color:aqua;
            }
 

		</style>
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

		p{
			text-align: left;
			padding-left: 5px;
		}
		

	    #form1 {
            margin-top: 146px;
        }
		

	    .auto-style1 {
            left: 10px;
            top: -132px;
            height: 389px;
            width: 580px;
            margin-top: 0px;
            margin-bottom: 0px;
        }
		

	</style>
</head>
<body>
    <form id="form1" runat="server">
       
           <div class="auto-style1">
            <p>Product Name <input runat="server" id="name" type="text" name="" style="width: 220px; margin-left: 19px; height: 30px;"/></p>
            <p>Description <input runat="server" id="description" type="text" style="width: 220px; margin-left: 42px; height: 30px;"/></p>
		    <p>Price <input runat="server" id="price" type="number" name="" style="width: 220px; margin-left: 89px; height: 30px;"/></p>
		    <p>Quantity <input runat="server" id="quantity" type="number" name="" style="width: 220px; margin-left: 62px; height: 30px;"/></p>
            <p>Image <input runat="server" id="url" type="text" name="" style="width: 220px; margin-left: 62px; height: 30px;"/></p>
		    <button runat="server" id="addProduct" type="button" onserverclick="addProduct_ServerClick">Add Product</button>
               <a href="Admin.aspx">Go to home page</a>
        </div>
      
      
		    
    </form>
</body>
</html>
