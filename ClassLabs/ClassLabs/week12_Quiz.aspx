<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="week12_Quiz.aspx.cs" Inherits="ClassLabs.week12_Quiz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
	USERNAME: <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br /><br />
	PASSWORD: <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br /><br />
	<asp:Button ID="check" runat="server" Text="Sign in" OnClick="check_Click" /><br />
	<asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
