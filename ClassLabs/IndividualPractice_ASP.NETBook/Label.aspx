<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Label.aspx.cs" Inherits="IndividualPractice_ASP.NETBook.Label" %>

<!DOCTYPE html>
<script runat="server">
	protected void CHECK(Object sender, EventArgs e)
	{
		LB3.Text = TB.Text;

	}


</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<link href="Practice.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
			<asp:Label ID="LB1" runat="server" Text="Name(Alt + N): " AccessKey="N" AssociatedControlID="TB">
			</asp:Label>

			<asp:TextBox ID="TB" runat="server"></asp:TextBox>

			<asp:Label ID="LB2" runat="server" AccessKey="C" AssociatedControlID="myBTN"></asp:Label>

			<asp:Button ID="myBTN" runat="server" Text="Click (Alt + C)" OnClick="CHECK" />
			<hr />

			<asp:Label ID="LB3" runat="server"></asp:Label>


        </div>
    </form>
</body>
</html>
