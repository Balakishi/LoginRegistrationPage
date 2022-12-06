<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LoginRegistrationPage.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="LoginDesing.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
              <div class="main">  	
		<input type="checkbox" id="chk" aria-hidden="true" />

			<div class="login">
				<form >
					<label for="chk" aria-hidden="true">Login</label>
				
					 <p>if you don't have a profile<a href="index.aspx">&nbsp;Click here</a>to SignUp</p>
					<asp:TextBox ID="Txtbox_Loginemail" type="email" name="email" placeholder="Email" required="" runat="server"></asp:TextBox>
					<asp:TextBox ID="Txtbox_LoginPasswd" type="password" name="pswd" placeholder="Password" required="" runat="server"></asp:TextBox>
					<asp:Button ID="buttonLogin" runat="server" Text="Login" OnClick="Btn_login"/>
					<asp:Label ID="lblresult" runat="server" Text=""></asp:Label>

				</form>
			</div>

			
	</div>
    </form>
</body>
</html>
