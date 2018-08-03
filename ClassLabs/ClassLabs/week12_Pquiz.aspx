<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="week12_Pquiz.aspx.cs" Inherits="ClassLabs.week12Ptest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>week12_PreTest</title>
	<link href="StyleForClassLab.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
    USERNAME: <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br /><br />
	PASSWORD: <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br /><br />
	EMAIL: <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br /><br />
			<asp:Button ID="check" runat="server" Text="CHECK" OnClick="check_Click" />
			<asp:Label ID="Label1" runat="server" Text=""></asp:Label>

			<input type="hidden" id="hdn" runat="server" value="0" />

        </div>
    </form>
</body>
</html>
