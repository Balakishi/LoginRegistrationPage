<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="LoginRegistrationPage.itex" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Slide Navbar</title>
	<link rel="stylesheet" type="text/css" href="slide navbar style.css" />
	<link href="https://fonts.googleapis.com/css2?family=Jost:wght@500&display=swap" rel="stylesheet" />
	<style>
p {
 color: #fff;
    font-size: 1em;
    justify-content: center;
    display: flex;
    /*margin: 12px;*/
    font-weight: bold;
    cursor: pointer;
    transition: .5s ease-in-out;

     
}
a{
	 color: greenyellow;
    font-size: 1em;
    justify-content: center;
    display: flex;
    padding: 1px;
    font-weight: bold;
    cursor: pointer;
    transition: .5s ease-in-out;
}

#lblresult {
    color: #fff;
    font-size: 1em;
    justify-content: center;
    display: flex;
    margin: 20px;
    font-weight: bold;
    cursor: pointer;
    transition: .5s ease-in-out;
}
</style>

</head>
<body>
    <form id="form1" runat="server">

            <div class="main">  	
		


			<div class="signup">


				<form >
				<label>Sign up </label>
				<p>If you already have a profile <a href="Login.aspx"> &nbsp;Click here&nbsp; </a> to login</p>
					<asp:TextBox ID="Txtbox_username" type="text" name="txt" placeholder="User name" required="" runat="server"></asp:TextBox>
					<asp:TextBox ID="Txtbox_Signemail" type="email" name="email" placeholder="Email" required="" runat="server"></asp:TextBox>
					<asp:TextBox ID="Txtbox_SignPasswd" type="password" name="pswd" placeholder="Password" required="" runat="server"></asp:TextBox>
					<asp:TextBox ID="Txtbox_phone" type="tel"  name="phone" pattern="{+994} [0-9]{2}-[0-9]{3}-[0-9]{2}-[0-9]{2}" placeholder="+994 XX-XXX-XX-XX" required="+" runat="server"></asp:TextBox>
					<asp:Label ID="lblresult" runat="server" Text=""></asp:Label>
					<asp:Button ID="buttonSign" runat="server" Text="Sing up" AutoPostBack="true" OnClick="button_Click" />
				</form>
				
			</div>

			
	</div>
	
    </form>
</body>
</html>
