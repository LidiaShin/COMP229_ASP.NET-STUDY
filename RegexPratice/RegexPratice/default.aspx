<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="RegexPratice._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
			<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
			<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" />
        	<asp:Label ID="Label1" runat="server"></asp:Label>


        </div>
    	<p>

			<asp:TextBox ID="TextBox2" runat="server" ValidationGroup="email"></asp:TextBox>
			<asp:Button ID="Button2" runat="server" Text="Button2 (webControl)" OnClick="Button2_Click" ValidationGroup="email" />

			<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Incorrect!" ControlToValidate="TextBox2" EnableClientScript="False" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="email"></asp:RegularExpressionValidator>
        </p>
    </form>
</body>
</html>
