<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GeneratePromos.aspx.cs" Inherits="RestaurantManagementSystem.GeneratePromos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Promos</title>
    <script type="text/javascript">

   function genPromo(length) {
   var result           = '';
   var characters       = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
   var charactersLength = characters.length;
   for ( var i = 0; i < length; i++ ) {
      result += characters.charAt(Math.floor(Math.random() * charactersLength));
        }
       var disc = Math.floor(Math.random() * 60);
        document.getElementById("discount").innerHTML = disc;
        document.getElementById("promo").innerHTML = result.toUpperCase();


   return result;
   }
    </script>
 <style type="text/css">
   .coupon {
      border: 5px dotted #bbb; /* Dotted border */
      width: 80%;
      border-radius: 15px; /* Rounded border */
      margin: 0 auto; /* Center the coupon */
      max-width: 600px;
    }

    .container {
      padding: 2px 16px;
      background-color: #f1f1f1;
    }

    .promo {
      background: #ccc;
      padding: 3px;
    }

    .expire {
      color: red;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
        <div class="coupon">
          <div class="container">
            <h3>Company Logo</h3>
          </div>
          <img src="Images/hamburger.jpg" alt="Avatar" style="width:100%;">
          <div class="container" style="background-color:white">
            <h2><b><span id="discount">20</span>% OFF YOUR PURCHASE</b></h2>
            <p>Lorem ipsum..</p>
          </div>
          <div class="container">
            <p>Use Promo Code: <span class="promo" id="promo">Click Generate.</span></p>
              <button type="button" onclick="genPromo(5);">Generate</button>
            <p class="expire">Expires: Jan 03, 2021</p>
          </div>

            <p>Go to homepage <a href="Admin.aspx">Click here</a></p>
        </div>

 
    </form>
</body>
</html>
