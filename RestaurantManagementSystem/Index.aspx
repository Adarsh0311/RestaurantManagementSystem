<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="RestaurantManagementSystem.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Restaurant</title>
    <style type="text/css">
			
			button{
				
				border-style: none;
                border-color: inherit;
                border-width: 0;
                background-color:#9C44DC;
				color: white;
				text-align: center;
				transition-duration: 0.5s;
				border-radius: 5px;
				width: 175px;
				font-family: Calibri;
				margin-left: 0px;
                margin-top: 3px;
                height:25px;
               
        }
            p{
                
                font:icon;
            }
            button[id=message]{
                color:white;
                font-family:Candara;
            }

			button:hover{
				background-color: #9C44DC;
				transform: scale(1.05);
				color: white;
                font:bold;
			}

			div{

				width: 1260px;
				margin-top: 5px;
				text-align: right;	
			}
            div::after


			img:hover{
                border-radius:10px;
				transform:scale(1.3);
				transition: 0.3s;
			}

			}
		#indexForm {
            margin-left: 0px;
            margin-top: 0px;
        }
		#contact {
            height: 666px;
            margin-top: 34px;
        }
		.auto-style2 {
            width: 413px;
        }
        .auto-style3 {
            height: 250px;
            width: 360px;
            margin-left: 51px;
        }
		.auto-style4 {
            width: 108px;
            margin-left: 185px;
        }
        .auto-style5 {
            width: 120px;
            margin-left: 184px;
        }
        .auto-style6 {
            width: 136px;
        }
        .auto-style8 {
            width: 360px;
        }
        .auto-style9 {
            width: 140px;
            margin-left: 111px;
        }
		.auto-style11 {
            width: 260px;
        }
        .auto-style12 {
            width: 368px;
        }
		.auto-style13 {
            width: 360px;
            margin-left: 51px;
        }
		.auto-style14 {
            position: fixed;
            margin-top: 0px;
        }
		</style>

</head>
<body style="margin-right: 0px">
    <form id="indexForm" runat="server">
       
        <section id="home">
          <div class="auto-style14">

			    <button runat="server" id="homepage" onserverclick="logout_Click" type="button" onclick="window.location.href = '#home';">HOME</button>
			    <button type="button" onclick="window.location.href = '#about';">ABOUT</button>
			    <button type="button" onclick="window.location.href = '#contact';">CONTACT</button>
			    <button type="button" onclick="window.location.href = '#dish';">DISHES</button>
		    <!--	<button type="button">RESERVE TABLE</button> -->
			    <button type="button" onclick="window.location.href='Feedback.aspx';">FEEDBACK</button>
			    <button runat="server" id="signin" onserverclick="Sign_in" type="button"  target="_blank">SIGNIN</button>
			    <button type="button" onclick="window.location.href='Order.aspx';">ORDER</button>

		    </div>
        </section>
  

		<img src="Images/restaurant.jpg" align="center" style="width: 1260px"/>

        <section id="dish">
            <h1 align="center" style="margin: 80px"><hr/>Our Top Rated Dishes<hr/></h1>

	
  <table class="auto-style6">
  <tr>
    <th class="auto-style11"><img src="Images/d1.jpg" class="auto-style8" /></th>
    <th class="auto-style2"><img src="Images/d2.jpg" class="auto-style13"/></th>
    <th class="auto-style12"><img src="Images/tikka.jpg" class="auto-style3"/></th>
  </tr>
  <tr>
    <td class="auto-style11"><p class="auto-style9" style="font-family:sans-serif">SANDWICH</p></td>
    <td class="auto-style2"><p class="auto-style5" style="font-family:sans-serif">PAASTA</p></td>
    <td class="auto-style12"><p class="auto-style4"style="font-family:sans-serif">TIKKA</p></td>
  </tr>

</table>

        </section>

        <section id="about">
            <h1 align="center" style="margin: 80px"><hr/>About Us<hr /></h1>
            <p style="font-family:Calibri; text-align:justify">The&nbsp; white pepper is Pakistan's most recognized and 
       distinguished
                hospitality brand with a history of ma
                rket innovation and excellence in restaurants chain operation. The Salt'n Pepper Restaurants are regarded 
                and respected as the number one restaurant entity in Pakistan by local and foreign observers.
                The Salt'n Pepper Restaurants are an example of gracious dinning, outstanding service, extraordinary
                classic and contemporary
                cuisine. The restaurants have become the ultimate dinning destinations in Lahore, Karachi and London.
                From family occasions to business dinners and moments of the heart, this place is where unforgettable memories are made.

The&nbsp; white pepper Restaurant on the Lahore Mall Road was established in 1983 by hotelier/restaurant 
                entrepreneur Mahmood Akbar, considered by many as the pioneer hotelier and restaurateur in Pakistan.

Foodconsults (Pvt.) Limited the owing company of&nbsp; white pepper&nbsp; Restaurants, which has its Headquarter in Lahore,
                prides itself on developing Pakistan's first national chain of restaurants. For over 3 decades,
                the group's focus has been to provide their guests with an exceptional dining experience. The group's 
                profile includes expertise in Pakistani and Continental cuisine, along with Fast Food.</p>
        </section>
		
        <section id="contact">
            <h1 align="center" style="margin: 80px"><hr />Contact<hr /></h1>
             <input type="name" placeholder="Enter name" style="height: 33px; width: 333px; margin-top: 0px;"/>
            <br />
            <input type="email" placeholder="Enter Your Email" style="margin-top: 17px; width: 333px; height: 33px;" />
            <br />
            <input type="text" placeholder="Message" style="width: 333px; height: 98px; margin-top: 21px;" />
            <br />
            <button id="message" type="submit" style="background-color:crimson; height: 37px;" border-radius="1px">Send Message</button>

        </section>
         

    </form>
</body>
</html>
