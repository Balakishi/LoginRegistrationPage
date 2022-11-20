<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="LoginRegistrationPage.itex" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Slide Navbar</title>
	<link rel="stylesheet" type="text/css" href="slide navbar style.css" />
	<link href="https://fonts.googleapis.com/css2?family=Jost:wght@500&display=swap" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
            <div class="main">  	
		<input type="checkbox" id="chk" aria-hidden="true" />

			<div class="signup">
				<form >
					<label for="chk" aria-hidden="true">Sign up</label>	
					<asp:TextBox ID="Txtbox_username" type="text" name="txt" placeholder="User name" required="" runat="server"></asp:TextBox>
					<asp:TextBox ID="Txtbox_Signemail" type="email" name="email" placeholder="Email" required="" runat="server"></asp:TextBox>
					<asp:TextBox ID="Txtbox_SignPasswd" type="password" name="pswd" placeholder="Password" required="" runat="server"></asp:TextBox>
					<asp:TextBox ID="Txtbox_phone" type="tel"  name="phone" pattern="{+994} [0-9]{2}-[0-9]{3}-[0-9]{2}-[0-9]{2}" placeholder="+994 XX-XXX-XX-XX" required="+" runat="server"></asp:TextBox>
					<asp:Button ID="buttonSign" runat="server" Text="Sing up" OnClick="button_Click" />

					
					
				</form>
				
			</div>

			<div class="login">
				<form>
					<label for="chk" aria-hidden="true">Login</label>
					<asp:TextBox ID="Txtbox_LoginEmail" type="email" name="email" placeholder="Email" required="" runat="server"></asp:TextBox>
					<asp:TextBox ID="Txtbox_LoginPasswd" type="password" name="pswd" placeholder="Password" required="" runat="server"></asp:TextBox>
					<asp:Button ID="buttonLogin" runat="server" Text="Login" />
				</form>
			</div>
	</div>
    </form>
</body>
</html>
