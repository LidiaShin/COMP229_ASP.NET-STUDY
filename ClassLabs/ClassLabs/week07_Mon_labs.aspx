<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="week07_Mon_labs.aspx.cs" Inherits="ClassLabs.week7_labs" %>

<!DOCTYPE html>
<script runat="server">


	void CHECK(object sender, EventArgs e) {
		string s = "You chose: <span id=\"colored\"> ";
		for (int i = 0; i < favoriteFood.Items.Count; i++)
		{
			if (favoriteFood.Items[i].Selected)
			{
				s = s +  favoriteFood.Items[i].Text + " ";
			}
		}
		Label1.Text = s+"</span>";

	}

	void CHECK2(object sender, BulletedListEventArgs e)
	{
		Response.Write("You chose the list of : " + e.Index.ToString()
			+ "<br> You chose the value : " + CityList.Items[e.Index].Value
			+ "<br> You chose the text : " + CityList.Items[e.Index].Text);
	}

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<link href="StyleForClassLab.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        


			        <p> 
            <asp:CheckBoxList id="favoriteFood" runat="server"  AutoPostBack = "true" OnSelectedIndexChanged="CHECK">
            <asp:ListItem Text="Pizza" Value="pizza" />
            <asp:ListItem Text="Tacos" Value="tacos" />
            <asp:ListItem Text="Pasta" Value="pasta" />
            </asp:CheckBoxList>
        </p>

			<hr />
			<!--<asp:Button ID="Button1" runat="server" Text="Confirm" OnClick="CHECK"/><br /> -->
			<asp:Label ID="Label1" runat="server"></asp:Label>

        
		<hr />

		<asp:BulletedList ID="CityList" BulletStyle="Square" OnClick="CHECK2" DisplayMode="HyperLink" runat="server">
					<asp:ListItem Value="https://www.toronto.ca/">Toronto</asp:ListItem>
					<asp:ListItem Value="https://www.twtainan.net/">Tainan</asp:ListItem>
					<asp:ListItem  Value="https://www.tel-aviv.gov.il/en/Pages/HomePage.aspx">Tel Aviv</asp:ListItem>
					<asp:ListItem  Value="https://www.gotokyo.org/en/">Tokyo</asp:ListItem>
					<asp:ListItem  Value="https://www.visittuscany.com/en/towns-and-cities/">Toscana</asp:ListItem>
				</asp:BulletedList>


	<hr />



    				<asp:Calendar ID="Calendar1"  MultiSelectedDates="true" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="2px" DayNameFormat="FirstLetter" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px" FirstDayOfWeek="Monday" OnSelectionChanged="Calendar1_SelectionChanged" SelectionMode="DayWeek">
						<DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
						<NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
						<OtherMonthDayStyle ForeColor="#CC9966" />
						<SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
						<SelectorStyle BackColor="#FFCC66" />
						<TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
						<TodayDayStyle BackColor="#FFCC66" ForeColor="#660066" />
						
					</asp:Calendar>
		<h1>You selected these dates:</h1>
<asp:Label ID="myLabel" runat="server" />

		<hr />
	<asp:AdRotator ID="adRotator" runat="server" AdvertisementFile="~/Ads.xml" />
		<hr />

		<div>
<asp:SiteMapDataSource ID="mySiteMapDataSource"
runat="server" ShowStartingNode="true" />
<asp:TreeView ID="myTreeView" runat="server"
DataSourceID="mySiteMapDataSource" />
</div>

		<hr />

<div>
        <asp:SiteMapDataSource ID="SiteMapDataSource1"
runat="server" />
<asp:SiteMapPath ID="mySiteMapPath" runat="server"
DataSourceID="mySiteMapDataSource"
PathSeparator=" > " RenderCurrentNodeAsLink="true" SkipLinkText=""/>
    </div>




    </form>
</body>
</html>
