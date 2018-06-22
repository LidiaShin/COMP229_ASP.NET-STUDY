<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RadioButton.aspx.cs" Inherits="IndividualPractice_ASP.NETBook.RadioButton" %>

<!DOCTYPE html>
<script runat="server">
	protected void CHECK(object sender, EventArgs E)
	{
		LB.Text = "Index: " + RBL.SelectedIndex.ToString() +
		   "<br> Value: " + RBL.SelectedItem.Value +
		   "<br> Text: " + RBL.SelectedItem.Text;


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
			<h3>RidioButtonList Practice</h3>
			<asp:RadioButtonList ID="RBL" runat="server" AutoPostBack="true" OnSelectedIndexChanged="CHECK">

		    <asp:ListItem Text="Tokyo" Value="TK" />
            <asp:ListItem Text="Kyoto" Value="KT" />
            <asp:ListItem Text="Nagoya" Value="NA" />
			<asp:ListItem Text="Hukuoka" Value="HK" />
            <asp:ListItem Text="Sendai" Value="SD" />
            <asp:ListItem Text="KOBE" Value="KB" />


			</asp:RadioButtonList>
			<hr />
			<asp:Label ID="LB" runat="server" Text="City: "></asp:Label>
			<hr />

			

        </div>
    </form>
</body>
</html>
