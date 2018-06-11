<%@ Page Language="C#" runat="server"%>
<script runat="server">
	void CHECK(object sender, BulletedListEventArgs e)
	{
		Response.Write("You chose the list of : " + e.Index.ToString()
			+ "<br> You chose the value : " + ColorList.Items[e.Index].Value
			+ "<br> You chose the text : " + ColorList.Items[e.Index].Text);
	}


</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<link href="BulletList.css" rel="stylesheet" type="text/css" />
	<link href="Practice.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: left;">
			<div style="float:left;padding-right:30px;">
				<h3>Your Cities start with T</h3><hr />
				<asp:BulletedList ID="CityList" BulletStyle="Square" DisplayMode="HyperLink" runat="server">
					<asp:ListItem Value="https://www.toronto.ca/">Toronto</asp:ListItem>
					<asp:ListItem Value="https://www.twtainan.net/">Tainan</asp:ListItem>
					<asp:ListItem  Value="https://www.tel-aviv.gov.il/en/Pages/HomePage.aspx">Tel Aviv</asp:ListItem>
					<asp:ListItem  Value="https://www.gotokyo.org/en/">Tokyo</asp:ListItem>
					<asp:ListItem  Value="https://www.visittuscany.com/en/towns-and-cities/">Toscana</asp:ListItem>
				</asp:BulletedList>
			</div>

			<div style="float:left; padding-right:30px;">
				<h3>Colors</h3><hr />
				<asp:BulletedList ID="ColorList" runat="server" DisplayMode="LinkButton" OnClick="CHECK">
					<asp:ListItem>Pink</asp:ListItem>
					<asp:ListItem>White</asp:ListItem>
					<asp:ListItem>Orange</asp:ListItem>
					<asp:ListItem>Green</asp:ListItem>
					<asp:ListItem>NavyBlue</asp:ListItem>
				</asp:BulletedList>
			</div>

				<div style="float:left; padding-right:30px;">
				<h3>Flowers</h3><hr />
				<asp:BulletedList ID="FlowerList" runat="server">
					<asp:ListItem>Rose</asp:ListItem>
					<asp:ListItem>Lilac</asp:ListItem>
					<asp:ListItem>Pansy</asp:ListItem>
					<asp:ListItem>Yuri</asp:ListItem>
					<asp:ListItem>Jasmin</asp:ListItem>
				</asp:BulletedList>
			</div>

			<div style="float:left; padding-right:30px;">
				<h3>Candy</h3><hr />
				<asp:BulletedList ID="CandyList" runat="server" BulletStyle="Numbered" FirstBulletNumber="10">
					<asp:ListItem>Mint</asp:ListItem>
					<asp:ListItem>Caramel</asp:ListItem>
					<asp:ListItem>DarkSugar</asp:ListItem>
					<asp:ListItem>Rose</asp:ListItem>
					<asp:ListItem>Coffee</asp:ListItem>
				</asp:BulletedList>
			</div>


        </div>
    </form>
</body>
</html>
