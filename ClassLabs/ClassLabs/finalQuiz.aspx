<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="finalQuiz.aspx.cs" Inherits="ClassLabs.finalQuiz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<link href="StyleForClassLab.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
final Quiz <hr />
			<asp:Label ID="display" runat="server" Text=" "></asp:Label><br />
			<asp:TextBox ID="TextBox1" runat="server" placeholder="Name" Width="500px"></asp:TextBox><br />

			
			<asp:TextBox ID="TextBox2" runat="server"  placeholder="Email" Width="500px"></asp:TextBox><br />

			
			<asp:TextBox ID="TextBox3" runat="server"  placeholder="Subject" Width="500px"></asp:TextBox><br />

			
			<asp:TextBox ID="TextBox4" runat="server"  placeholder="Message" Height="300px" Width="500px"></asp:TextBox><br />

			<asp:Button ID="send" runat="server" Text="send" OnClick="send_Click" />



        </div>
    </form>
</body>
</html>
