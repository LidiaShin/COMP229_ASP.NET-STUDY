<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckBoxListControl.aspx.cs" Inherits="IndividualPractice_ASP.NETBook.CheckBoxListControl" %>
<script runat="server">
	void CHECK(object sender, EventArgs e) {
		string s = "You chose: <span id=\"colored\"> ";
		for (int i = 0; i < CheckBoxList1.Items.Count; i++)
		{
			if (CheckBoxList1.Items[i].Selected)
			{
				s = s +  CheckBoxList1.Items[i].Text + " ";
			}
		}
		Label1.Text = s+"</span>";

	}
</script>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<link href="Practice.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
			<asp:CheckBoxList ID="CheckBoxList1" runat="server">
				<asp:ListItem Value="first">first Item</asp:ListItem>
				<asp:ListItem Value="second" Text="seconds">second Item</asp:ListItem>
				<asp:ListItem Value="third" Enabled="false">third Item</asp:ListItem>
				<asp:ListItem Value="forth" Selected="true">fourth Item</asp:ListItem>
			</asp:CheckBoxList>
			<hr />
			<asp:Button ID="Button1" runat="server" Text="Confirm" OnClick="CHECK"/><br />
			<asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
