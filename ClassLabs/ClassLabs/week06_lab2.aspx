<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="week06_lab2.aspx.cs" Inherits="ClassLabs.week6_placeholder" %>

<!DOCTYPE html>
<script runat="server">

	public void HidePanel(Object s, EventArgs e)
	{
		if (myPanel.Visible)
		{
			myPanel.Visible = false;
			hideButton.Text = "Show";

		}
		else
		{
			myPanel.Visible = true;
			hideButton.Text = "Hide";
		}
	}


	public void Select(Object s, EventArgs e)
	{
		Label1.Text = "";
		// foreach (ListItem item in favoriteColor.Items)  
		for(int i=0;i<favoriteColor.Items.Count-1;i++)
		{
			int j = i + 1;
			if (favoriteColor.Items[i].Selected)

				Label1.Text += "You select color " + j + " is : " +  favoriteColor.Items[i] + "<br />";
		}

	}

	public void check(Object s, EventArgs e)
	{
		

		for(int i=0;i<colorz.Items.Count;i++)
		{
			// int j = i + 1;
			if (colorz.Items[i].Selected)

				Label2.Text = "You select color is : " +  colorz.Items[i] + "<br />";
		}

	}
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>week06_placeholder</title>
	<link href="week05.css" rel="stylesheet" type="text/css" />
	<link href="StyleForClassLab.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <p>
            <asp:PlaceHolder ID="myPlaceHolder" runat="server" />
        </p>
	<hr />

        <p>
            <asp:Panel id="myPanel" runat="server">
            <p>UserName: <asp:TextBox id="usernameTextBox" Columns="30"
            runat="server" /></p>
            <p>Password: <asp:TextBox id="passwordTextBox"
            TextMode="Password" Columns="30" runat="server" /></p>
            </asp:Panel>
            <asp:Button id="hideButton" Text="Hide Panel" OnClick="HidePanel"
            runat="server" />
        </p>
			<hr />
			
        <asp:ListBox id="favoriteColor" runat="server" AutoPostBack = "true" SelectionMode="Multiple">
        <asp:ListItem Text="Red" Value="red" />
        <asp:ListItem Text="Blue" Value="blue" />
        <asp:ListItem Text="Green" Value="green" />
			 <asp:ListItem Text="skyblue" Value="skyblue" />
        <asp:ListItem Text="brown" Value="brown" />
        <asp:ListItem Text="white" Value="white" />
        </asp:ListBox>
        
        <asp:Button id="SelectButton" Text="Select" OnClick="Select"
        runat="server" />
<br />
			<asp:Label id="Label1" runat="server" /> <br />
			<hr />

			        <p> 
            <asp:RadioButtonList id="colorz" runat="server"  AutoPostBack="true" OnSelectedIndexChanged="check">
            <asp:ListItem Text="Red" Value="red" />
            <asp:ListItem Text="Blue" Value="blue" />
            <asp:ListItem Text="Green" Value="green" />
            </asp:RadioButtonList> <br />
						<asp:Label ID="Label2" runat="server"></asp:Label>
        </p>

        </div>
    </form>
</body>
</html>
